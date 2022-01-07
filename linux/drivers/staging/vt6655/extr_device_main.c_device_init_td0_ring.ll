; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_init_td0_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_init_td0_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.vnt_tx_desc*, %struct.vnt_tx_desc**, %struct.vnt_tx_desc**, i64, %struct.TYPE_4__, i64, i64 }
%struct.vnt_tx_desc = type { %struct.TYPE_5__*, i8*, %struct.vnt_tx_desc* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*)* @device_init_td0_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_init_td0_ring(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.vnt_tx_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  %8 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %9 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %84, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %12, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %11
  %21 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %22 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %21, i32 0, i32 0
  %23 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %23, i64 %25
  store %struct.vnt_tx_desc* %26, %struct.vnt_tx_desc** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_5__* @kzalloc(i32 16, i32 %27)
  %29 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %30 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %29, i32 0, i32 0
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %32 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %118

38:                                               ; preds = %20
  %39 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PKT_BUF_SZ, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %48 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 %46, i64* %50, align 8
  %51 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PKT_BUF_SZ, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %60 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %64 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %63, i32 0, i32 0
  %65 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %69 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %67, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %65, i64 %75
  %77 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %78 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %77, i32 0, i32 2
  store %struct.vnt_tx_desc* %76, %struct.vnt_tx_desc** %78, align 8
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 24
  %81 = call i8* @cpu_to_le32(i64 %80)
  %82 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %83 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %38
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 24
  store i64 %88, i64* %5, align 8
  br label %11

89:                                               ; preds = %11
  %90 = load i32, i32* %4, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %94 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @cpu_to_le32(i64 %95)
  %97 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %98 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %97, i32 0, i32 0
  %99 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %99, i64 %102
  %104 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %103, i32 0, i32 1
  store i8* %96, i8** %104, align 8
  br label %105

105:                                              ; preds = %92, %89
  %106 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %107 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %106, i32 0, i32 0
  %108 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %107, align 8
  %109 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %108, i64 0
  %110 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %111 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %110, i32 0, i32 1
  %112 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %111, align 8
  %113 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %112, i64 0
  store %struct.vnt_tx_desc* %109, %struct.vnt_tx_desc** %113, align 8
  %114 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %115 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %114, i32 0, i32 2
  %116 = load %struct.vnt_tx_desc**, %struct.vnt_tx_desc*** %115, align 8
  %117 = getelementptr inbounds %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %116, i64 0
  store %struct.vnt_tx_desc* %109, %struct.vnt_tx_desc** %117, align 8
  store i32 0, i32* %2, align 4
  br label %136

118:                                              ; preds = %35
  br label %119

119:                                              ; preds = %123, %118
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %125 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %124, i32 0, i32 0
  %126 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %126, i64 %128
  store %struct.vnt_tx_desc* %129, %struct.vnt_tx_desc** %6, align 8
  %130 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %6, align 8
  %131 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = call i32 @kfree(%struct.TYPE_5__* %132)
  br label %119

134:                                              ; preds = %119
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %105
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
