; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mfd_cell = type { %struct.resource* }
%struct.resource = type { i64 }
%struct.fb_info = type { i64, %struct.tmiofb_par* }
%struct.tmiofb_par = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CCR_UGCC = common dso_local global i64 0, align 8
@CCR_GCC = common dso_local global i64 0, align 8
@CCR_USC = common dso_local global i64 0, align 8
@CCR_BASEH = common dso_local global i64 0, align 8
@CCR_BASEL = common dso_local global i64 0, align 8
@CCR_CMD = common dso_local global i64 0, align 8
@CCR_VRAMRTC = common dso_local global i64 0, align 8
@CCR_VRAMSAC = common dso_local global i64 0, align 8
@CCR_VRAMBC = common dso_local global i64 0, align 8
@LCR_CFSAH = common dso_local global i64 0, align 8
@LCR_CFSAL = common dso_local global i64 0, align 8
@TMIOFB_FIFO_SIZE = common dso_local global i32 0, align 4
@LCR_CFS = common dso_local global i64 0, align 8
@LCR_CFC = common dso_local global i64 0, align 8
@LCR_BBIE = common dso_local global i64 0, align 8
@LCR_CFWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmiofb_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmiofb_hw_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.tmiofb_par*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %10)
  store %struct.mfd_cell* %11, %struct.mfd_cell** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.fb_info* %13, %struct.fb_info** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load %struct.tmiofb_par*, %struct.tmiofb_par** %15, align 8
  store %struct.tmiofb_par* %16, %struct.tmiofb_par** %6, align 8
  %17 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %18 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %17, i32 0, i32 0
  %19 = load %struct.resource*, %struct.resource** %18, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i64 0
  store %struct.resource* %20, %struct.resource** %7, align 8
  %21 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %22 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %22, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i64 2
  store %struct.resource* %24, %struct.resource** %8, align 8
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = icmp eq %struct.resource* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.resource*, %struct.resource** %8, align 8
  %29 = icmp eq %struct.resource* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %160

33:                                               ; preds = %27
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %38 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CCR_UGCC, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @tmio_iowrite16(i32 58, i64 %41)
  %43 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %44 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CCR_GCC, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @tmio_iowrite16(i32 58, i64 %47)
  %49 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %50 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CCR_USC, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @tmio_iowrite16(i32 16128, i64 %53)
  %55 = call i32 @msleep(i32 2)
  %56 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %57 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CCR_USC, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @tmio_iowrite16(i32 0, i64 %60)
  %62 = load i64, i64* %9, align 8
  %63 = lshr i64 %62, 16
  %64 = trunc i64 %63 to i32
  %65 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %66 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CCR_BASEH, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @tmio_iowrite16(i32 %64, i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %74 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CCR_BASEL, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @tmio_iowrite16(i32 %72, i64 %77)
  %79 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %80 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CCR_CMD, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @tmio_iowrite16(i32 2, i64 %83)
  %85 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %86 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CCR_VRAMRTC, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @tmio_iowrite16(i32 16552, i64 %89)
  %91 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %92 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CCR_VRAMSAC, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @tmio_iowrite16(i32 24, i64 %95)
  %97 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %98 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CCR_VRAMBC, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @tmio_iowrite16(i32 2, i64 %101)
  %103 = call i32 @msleep(i32 2)
  %104 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %105 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CCR_VRAMBC, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @tmio_iowrite16(i32 11, i64 %108)
  %110 = load %struct.resource*, %struct.resource** %8, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %112, %115
  store i64 %116, i64* %9, align 8
  %117 = load i64, i64* %9, align 8
  %118 = lshr i64 %117, 16
  %119 = trunc i64 %118 to i32
  %120 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %121 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @LCR_CFSAH, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @tmio_iowrite16(i32 %119, i64 %124)
  %126 = load i64, i64* %9, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %129 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @LCR_CFSAL, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @tmio_iowrite16(i32 %127, i64 %132)
  %134 = load i32, i32* @TMIOFB_FIFO_SIZE, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %137 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @LCR_CFS, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @tmio_iowrite16(i32 %135, i64 %140)
  %142 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %143 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @LCR_CFC, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @tmio_iowrite16(i32 1, i64 %146)
  %148 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %149 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @LCR_BBIE, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @tmio_iowrite16(i32 1, i64 %152)
  %154 = load %struct.tmiofb_par*, %struct.tmiofb_par** %6, align 8
  %155 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @LCR_CFWS, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @tmio_iowrite16(i32 0, i64 %158)
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %33, %30
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
