; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_setup_qp_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, %struct.ntb_transport_mw*, %struct.ntb_dev*, %struct.ntb_transport_qp* }
%struct.ntb_transport_mw = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ntb_dev = type { i32 }
%struct.ntb_transport_qp = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32, i64 }
%struct.ntb_queue_entry = type { i32, %struct.ntb_transport_qp* }

@ENOMEM = common dso_local global i32 0, align 4
@transport_mtu = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_ctx*, i32)* @ntb_transport_setup_qp_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transport_setup_qp_mw(%struct.ntb_transport_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_transport_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca %struct.ntb_transport_mw*, align 8
  %8 = alloca %struct.ntb_dev*, align 8
  %9 = alloca %struct.ntb_queue_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %18, i32 0, i32 4
  %20 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %20, i64 %22
  store %struct.ntb_transport_qp* %23, %struct.ntb_transport_qp** %6, align 8
  %24 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %24, i32 0, i32 3
  %26 = load %struct.ntb_dev*, %struct.ntb_dev** %25, align 8
  store %struct.ntb_dev* %26, %struct.ntb_dev** %8, align 8
  %27 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @QP_TO_MW(%struct.ntb_transport_ctx* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %36, i32 0, i32 2
  %38 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %38, i64 %40
  store %struct.ntb_transport_mw* %41, %struct.ntb_transport_mw** %7, align 8
  %42 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %43 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %190

49:                                               ; preds = %2
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = urem i32 %51, %52
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = udiv i32 %56, %57
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = udiv i32 %61, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %66 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = udiv i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %7, align 8
  %72 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %13, align 4
  %77 = udiv i32 %75, %76
  %78 = mul i32 %74, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %79
  %81 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %82 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %81, i32 0, i32 6
  store %struct.TYPE_2__* %80, %struct.TYPE_2__** %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = sub i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %88 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %87, i32 0, i32 6
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %94 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %93, i32 0, i32 7
  store %struct.TYPE_2__* %92, %struct.TYPE_2__** %94, align 8
  %95 = load i32, i32* @transport_mtu, align 4
  %96 = load i32, i32* %10, align 4
  %97 = udiv i32 %96, 2
  %98 = call i32 @min(i32 %95, i32 %97)
  %99 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %100 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %103 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = udiv i32 %101, %104
  %106 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %107 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %109 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %108, i32 0, i32 10
  store i64 0, i64* %109, align 8
  %110 = load %struct.ntb_dev*, %struct.ntb_dev** %8, align 8
  %111 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %110, i32 0, i32 0
  %112 = call i32 @dev_to_node(i32* %111)
  store i32 %112, i32* %16, align 4
  %113 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %114 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %146, %64
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %119 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %116
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call %struct.ntb_queue_entry* @kzalloc_node(i32 16, i32 %123, i32 %124)
  store %struct.ntb_queue_entry* %125, %struct.ntb_queue_entry** %9, align 8
  %126 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %9, align 8
  %127 = icmp ne %struct.ntb_queue_entry* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %190

131:                                              ; preds = %122
  %132 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %133 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %9, align 8
  %134 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %133, i32 0, i32 1
  store %struct.ntb_transport_qp* %132, %struct.ntb_transport_qp** %134, align 8
  %135 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %136 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %135, i32 0, i32 9
  %137 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %9, align 8
  %138 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %137, i32 0, i32 0
  %139 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %140 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %139, i32 0, i32 8
  %141 = call i32 @ntb_list_add(i32* %136, i32* %138, i32* %140)
  %142 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %143 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %131
  %147 = load i32, i32* %15, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %116

149:                                              ; preds = %116
  %150 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %151 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub i32 %152, 1
  %154 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %155 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %154, i32 0, i32 7
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 4
  store i32 0, i32* %15, align 4
  br label %158

158:                                              ; preds = %180, %149
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %161 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %158
  %165 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %166 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %165, i32 0, i32 6
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %169 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = add i32 %171, 1
  %173 = mul i32 %170, %172
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 -4
  %177 = bitcast %struct.TYPE_2__* %176 to i8*
  store i8* %177, i8** %17, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = call i32 @memset(i8* %178, i32 0, i32 4)
  br label %180

180:                                              ; preds = %164
  %181 = load i32, i32* %15, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %158

183:                                              ; preds = %158
  %184 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %185 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %184, i32 0, i32 5
  store i64 0, i64* %185, align 8
  %186 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %187 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %189 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %188, i32 0, i32 3
  store i64 0, i64* %189, align 8
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %183, %128, %46
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @QP_TO_MW(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local %struct.ntb_queue_entry* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @ntb_list_add(i32*, i32*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
