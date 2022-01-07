; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_discover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i8*, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.tb_port*, %struct.tb_port* }
%struct.tb_port = type { %struct.tb_port*, %struct.tb_switch* }
%struct.tb_switch = type { %struct.tb_port*, i32 }
%struct.tb_regs_hop = type { i64, i32, i32 }

@TB_PATH_MAX_HOPS = common dso_local global i32 0, align 4
@TB_CFG_HOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read path at %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to discover path starting at HopID %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_path* @tb_path_discover(%struct.tb_port* %0, i32 %1, %struct.tb_port* %2, i32 %3, %struct.tb_port** %4, i8* %5) #0 {
  %7 = alloca %struct.tb_path*, align 8
  %8 = alloca %struct.tb_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tb_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tb_port**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tb_port*, align 8
  %15 = alloca %struct.tb_regs_hop, align 8
  %16 = alloca %struct.tb_path*, align 8
  %17 = alloca %struct.tb_switch*, align 8
  %18 = alloca %struct.tb_port*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.tb_port* %2, %struct.tb_port** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.tb_port** %4, %struct.tb_port*** %12, align 8
  store i8* %5, i8** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %6
  %27 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %28 = icmp ne %struct.tb_port* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %31 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @tb_path_find_src_hopid(%struct.tb_port* %30, %struct.tb_port* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store %struct.tb_path* null, %struct.tb_path** %7, align 8
  br label %230

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %26, %6
  %39 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  store %struct.tb_port* %39, %struct.tb_port** %18, align 8
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %22, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %41

41:                                               ; preds = %90, %38
  %42 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %43 = icmp ne %struct.tb_port* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* @TB_PATH_MAX_HOPS, align 4
  %47 = icmp slt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %93

50:                                               ; preds = %48
  %51 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %52 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %51, i32 0, i32 1
  %53 = load %struct.tb_switch*, %struct.tb_switch** %52, align 8
  store %struct.tb_switch* %53, %struct.tb_switch** %17, align 8
  %54 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %55 = load i32, i32* @TB_CFG_HOPS, align 4
  %56 = load i32, i32* %22, align 4
  %57 = mul nsw i32 2, %56
  %58 = call i32 @tb_port_read(%struct.tb_port* %54, %struct.tb_regs_hop* %15, i32 %55, i32 %57, i32 2)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %63 = load i32, i32* %22, align 4
  %64 = call i32 @tb_port_warn(%struct.tb_port* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63)
  store %struct.tb_path* null, %struct.tb_path** %7, align 8
  br label %230

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %15, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %93

70:                                               ; preds = %65
  %71 = load %struct.tb_switch*, %struct.tb_switch** %17, align 8
  %72 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %71, i32 0, i32 0
  %73 = load %struct.tb_port*, %struct.tb_port** %72, align 8
  %74 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %15, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %73, i64 %75
  store %struct.tb_port* %76, %struct.tb_port** %14, align 8
  %77 = load %struct.tb_port**, %struct.tb_port*** %12, align 8
  %78 = icmp ne %struct.tb_port** %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.tb_port*, %struct.tb_port** %14, align 8
  %81 = load %struct.tb_port**, %struct.tb_port*** %12, align 8
  store %struct.tb_port* %80, %struct.tb_port** %81, align 8
  br label %82

82:                                               ; preds = %79, %70
  %83 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %15, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %22, align 4
  %85 = load %struct.tb_port*, %struct.tb_port** %14, align 8
  %86 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %85, i32 0, i32 0
  %87 = load %struct.tb_port*, %struct.tb_port** %86, align 8
  store %struct.tb_port* %87, %struct.tb_port** %18, align 8
  %88 = load i64, i64* %19, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %19, align 8
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  br label %41

93:                                               ; preds = %69, %48
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call %struct.tb_path* @kzalloc(i32 40, i32 %94)
  store %struct.tb_path* %95, %struct.tb_path** %16, align 8
  %96 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %97 = icmp ne %struct.tb_path* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store %struct.tb_path* null, %struct.tb_path** %7, align 8
  br label %230

99:                                               ; preds = %93
  %100 = load i8*, i8** %13, align 8
  %101 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %102 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %104 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %103, i32 0, i32 1
  %105 = load %struct.tb_switch*, %struct.tb_switch** %104, align 8
  %106 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %109 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %112 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %114 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.TYPE_2__* @kcalloc(i64 %115, i32 32, i32 %116)
  %118 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %119 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %118, i32 0, i32 3
  store %struct.TYPE_2__* %117, %struct.TYPE_2__** %119, align 8
  %120 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %121 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = icmp ne %struct.TYPE_2__* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %99
  %125 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %126 = call i32 @kfree(%struct.tb_path* %125)
  store %struct.tb_path* null, %struct.tb_path** %7, align 8
  br label %230

127:                                              ; preds = %99
  %128 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  store %struct.tb_port* %128, %struct.tb_port** %18, align 8
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %130

130:                                              ; preds = %219, %127
  %131 = load i32, i32* %21, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %19, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %222

135:                                              ; preds = %130
  %136 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %137 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %136, i32 0, i32 1
  %138 = load %struct.tb_switch*, %struct.tb_switch** %137, align 8
  store %struct.tb_switch* %138, %struct.tb_switch** %17, align 8
  %139 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %140 = load i32, i32* @TB_CFG_HOPS, align 4
  %141 = load i32, i32* %22, align 4
  %142 = mul nsw i32 2, %141
  %143 = call i32 @tb_port_read(%struct.tb_port* %139, %struct.tb_regs_hop* %15, i32 %140, i32 %142, i32 2)
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %148 = load i32, i32* %22, align 4
  %149 = call i32 @tb_port_warn(%struct.tb_port* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %148)
  br label %224

150:                                              ; preds = %135
  %151 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = call i64 @tb_port_alloc_in_hopid(%struct.tb_port* %151, i32 %152, i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %224

157:                                              ; preds = %150
  %158 = load %struct.tb_switch*, %struct.tb_switch** %17, align 8
  %159 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %158, i32 0, i32 0
  %160 = load %struct.tb_port*, %struct.tb_port** %159, align 8
  %161 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %15, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %160, i64 %162
  store %struct.tb_port* %163, %struct.tb_port** %14, align 8
  %164 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %15, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %23, align 4
  %166 = load %struct.tb_port*, %struct.tb_port** %14, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %23, align 4
  %169 = call i64 @tb_port_alloc_out_hopid(%struct.tb_port* %166, i32 %167, i32 %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %157
  %172 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %173 = load i32, i32* %22, align 4
  %174 = call i32 @tb_port_release_in_hopid(%struct.tb_port* %172, i32 %173)
  br label %224

175:                                              ; preds = %157
  %176 = load %struct.tb_port*, %struct.tb_port** %18, align 8
  %177 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %178 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %177, i32 0, i32 3
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %21, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 4
  store %struct.tb_port* %176, %struct.tb_port** %183, align 8
  %184 = load i32, i32* %22, align 4
  %185 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %186 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %185, i32 0, i32 3
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  store i32 %184, i32* %191, align 8
  %192 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %193 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %192, i32 0, i32 3
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* %21, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  store i32 -1, i32* %198, align 4
  %199 = load %struct.tb_port*, %struct.tb_port** %14, align 8
  %200 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %201 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %200, i32 0, i32 3
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  store %struct.tb_port* %199, %struct.tb_port** %206, align 8
  %207 = load i32, i32* %23, align 4
  %208 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %209 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %208, i32 0, i32 3
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 2
  store i32 %207, i32* %214, align 8
  %215 = load i32, i32* %23, align 4
  store i32 %215, i32* %22, align 4
  %216 = load %struct.tb_port*, %struct.tb_port** %14, align 8
  %217 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %216, i32 0, i32 0
  %218 = load %struct.tb_port*, %struct.tb_port** %217, align 8
  store %struct.tb_port* %218, %struct.tb_port** %18, align 8
  br label %219

219:                                              ; preds = %175
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %21, align 4
  br label %130

222:                                              ; preds = %130
  %223 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  store %struct.tb_path* %223, %struct.tb_path** %7, align 8
  br label %230

224:                                              ; preds = %171, %156, %146
  %225 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @tb_port_warn(%struct.tb_port* %225, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %226)
  %228 = load %struct.tb_path*, %struct.tb_path** %16, align 8
  %229 = call i32 @tb_path_free(%struct.tb_path* %228)
  store %struct.tb_path* null, %struct.tb_path** %7, align 8
  br label %230

230:                                              ; preds = %224, %222, %124, %98, %61, %36
  %231 = load %struct.tb_path*, %struct.tb_path** %7, align 8
  ret %struct.tb_path* %231
}

declare dso_local i32 @tb_path_find_src_hopid(%struct.tb_port*, %struct.tb_port*, i32) #1

declare dso_local i32 @tb_port_read(%struct.tb_port*, %struct.tb_regs_hop*, i32, i32, i32) #1

declare dso_local i32 @tb_port_warn(%struct.tb_port*, i8*, i32) #1

declare dso_local %struct.tb_path* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.tb_path*) #1

declare dso_local i64 @tb_port_alloc_in_hopid(%struct.tb_port*, i32, i32) #1

declare dso_local i64 @tb_port_alloc_out_hopid(%struct.tb_port*, i32, i32) #1

declare dso_local i32 @tb_port_release_in_hopid(%struct.tb_port*, i32) #1

declare dso_local i32 @tb_path_free(%struct.tb_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
