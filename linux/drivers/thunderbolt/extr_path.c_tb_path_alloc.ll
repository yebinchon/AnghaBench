; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i64, i8*, %struct.tb*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.tb_port*, %struct.tb_port* }
%struct.tb = type { i32 }
%struct.tb_port = type { i32, %struct.tb_port*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_path* @tb_path_alloc(%struct.tb* %0, %struct.tb_port* %1, i32 %2, %struct.tb_port* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.tb_path*, align 8
  %9 = alloca %struct.tb*, align 8
  %10 = alloca %struct.tb_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tb_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.tb_port*, align 8
  %17 = alloca %struct.tb_port*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tb_path*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %9, align 8
  store %struct.tb_port* %1, %struct.tb_port** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.tb_port* %3, %struct.tb_port** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tb_path* @kzalloc(i32 32, i32 %24)
  store %struct.tb_path* %25, %struct.tb_path** %20, align 8
  %26 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %27 = icmp ne %struct.tb_path* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store %struct.tb_path* null, %struct.tb_path** %8, align 8
  br label %195

29:                                               ; preds = %7
  %30 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %31 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @tb_route(i32 %32)
  %34 = call i64 @tb_route_length(i32 %33)
  %35 = load %struct.tb_port*, %struct.tb_port** %12, align 8
  %36 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @tb_route(i32 %37)
  %39 = call i64 @tb_route_length(i32 %38)
  %40 = sub nsw i64 %34, %39
  %41 = call i32 @abs(i64 %40)
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %21, align 8
  %44 = load i64, i64* %21, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.TYPE_2__* @kcalloc(i64 %44, i32 32, i32 %45)
  %47 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %48 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %47, i32 0, i32 3
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  %49 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %50 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %29
  %54 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %55 = call i32 @kfree(%struct.tb_path* %54)
  store %struct.tb_path* null, %struct.tb_path** %8, align 8
  br label %195

56:                                               ; preds = %29
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %18, align 4
  store %struct.tb_port* null, %struct.tb_port** %17, align 8
  store i32 0, i32* %22, align 4
  br label %58

58:                                               ; preds = %178, %56
  %59 = load i32, i32* %22, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %21, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %181

63:                                               ; preds = %58
  %64 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %65 = load %struct.tb_port*, %struct.tb_port** %12, align 8
  %66 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %67 = call %struct.tb_port* @tb_next_port_on_path(%struct.tb_port* %64, %struct.tb_port* %65, %struct.tb_port* %66)
  store %struct.tb_port* %67, %struct.tb_port** %16, align 8
  %68 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %69 = icmp ne %struct.tb_port* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %192

71:                                               ; preds = %63
  %72 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %73 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %72, i32 0, i32 1
  %74 = load %struct.tb_port*, %struct.tb_port** %73, align 8
  %75 = icmp ne %struct.tb_port* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %78 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %84 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %83, i32 0, i32 1
  %85 = load %struct.tb_port*, %struct.tb_port** %84, align 8
  store %struct.tb_port* %85, %struct.tb_port** %16, align 8
  br label %86

86:                                               ; preds = %82, %76, %71
  %87 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @tb_port_alloc_in_hopid(%struct.tb_port* %87, i32 %88, i32 %89)
  store i32 %90, i32* %23, align 4
  %91 = load i32, i32* %23, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %192

94:                                               ; preds = %86
  %95 = load i32, i32* %23, align 4
  store i32 %95, i32* %18, align 4
  %96 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %97 = load %struct.tb_port*, %struct.tb_port** %12, align 8
  %98 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %99 = call %struct.tb_port* @tb_next_port_on_path(%struct.tb_port* %96, %struct.tb_port* %97, %struct.tb_port* %98)
  store %struct.tb_port* %99, %struct.tb_port** %17, align 8
  %100 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %101 = icmp ne %struct.tb_port* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br label %192

103:                                              ; preds = %94
  %104 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %105 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %104, i32 0, i32 1
  %106 = load %struct.tb_port*, %struct.tb_port** %105, align 8
  %107 = icmp ne %struct.tb_port* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %110 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %116 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %115, i32 0, i32 1
  %117 = load %struct.tb_port*, %struct.tb_port** %116, align 8
  store %struct.tb_port* %117, %struct.tb_port** %17, align 8
  br label %118

118:                                              ; preds = %114, %108, %103
  %119 = load i32, i32* %22, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %21, align 8
  %122 = sub i64 %121, 1
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @tb_port_alloc_out_hopid(%struct.tb_port* %125, i32 %126, i32 %127)
  store i32 %128, i32* %23, align 4
  br label %132

129:                                              ; preds = %118
  %130 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %131 = call i32 @tb_port_alloc_out_hopid(%struct.tb_port* %130, i32 -1, i32 -1)
  store i32 %131, i32* %23, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %23, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %192

136:                                              ; preds = %132
  %137 = load i32, i32* %23, align 4
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %140 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 8
  %146 = load %struct.tb_port*, %struct.tb_port** %16, align 8
  %147 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %148 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %22, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  store %struct.tb_port* %146, %struct.tb_port** %153, align 8
  %154 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %155 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i32 -1, i32* %160, align 4
  %161 = load %struct.tb_port*, %struct.tb_port** %17, align 8
  %162 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %163 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %162, i32 0, i32 3
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  store %struct.tb_port* %161, %struct.tb_port** %168, align 8
  %169 = load i32, i32* %19, align 4
  %170 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %171 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %170, i32 0, i32 3
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %22, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  store i32 %169, i32* %176, align 8
  %177 = load i32, i32* %19, align 4
  store i32 %177, i32* %18, align 4
  br label %178

178:                                              ; preds = %136
  %179 = load i32, i32* %22, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %22, align 4
  br label %58

181:                                              ; preds = %58
  %182 = load %struct.tb*, %struct.tb** %9, align 8
  %183 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %184 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %183, i32 0, i32 2
  store %struct.tb* %182, %struct.tb** %184, align 8
  %185 = load i64, i64* %21, align 8
  %186 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %187 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load i8*, i8** %15, align 8
  %189 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %190 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  store %struct.tb_path* %191, %struct.tb_path** %8, align 8
  br label %195

192:                                              ; preds = %135, %102, %93, %70
  %193 = load %struct.tb_path*, %struct.tb_path** %20, align 8
  %194 = call i32 @tb_path_free(%struct.tb_path* %193)
  store %struct.tb_path* null, %struct.tb_path** %8, align 8
  br label %195

195:                                              ; preds = %192, %181, %53, %28
  %196 = load %struct.tb_path*, %struct.tb_path** %8, align 8
  ret %struct.tb_path* %196
}

declare dso_local %struct.tb_path* @kzalloc(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i64 @tb_route_length(i32) #1

declare dso_local i32 @tb_route(i32) #1

declare dso_local %struct.TYPE_2__* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.tb_path*) #1

declare dso_local %struct.tb_port* @tb_next_port_on_path(%struct.tb_port*, %struct.tb_port*, %struct.tb_port*) #1

declare dso_local i32 @tb_port_alloc_in_hopid(%struct.tb_port*, i32, i32) #1

declare dso_local i32 @tb_port_alloc_out_hopid(%struct.tb_port*, i32, i32) #1

declare dso_local i32 @tb_path_free(%struct.tb_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
