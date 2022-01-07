; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_decr_rtsi_brd_src_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_decr_rtsi_brd_src_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.comedi_device*)* @decr_rtsi_brd_src_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decr_rtsi_brd_src_use(i32 %0, i32 %1, %struct.comedi_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.ni_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.comedi_device* %2, %struct.comedi_device** %7, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  store %struct.ni_private* %13, %struct.ni_private** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %18 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %17, i32 0, i32 1
  %19 = call i64 @ni_lookup_route_register(i32 %15, i32 %16, i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @NI_RTSI_BRD(i32 0)
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %24 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %34 = call i64 @get_ith_rtsi_brd_reg(i32 %32, %struct.comedi_device* %33)
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %39 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %47 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %57 = call i32 @set_ith_rtsi_brd_reg(i32 %55, i32 0, %struct.comedi_device* %56)
  br label %58

58:                                               ; preds = %54, %37
  store i32 0, i32* %4, align 4
  br label %62

59:                                               ; preds = %31, %3
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @ni_lookup_route_register(i32, i32, i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_RTSI_BRD(i32) #1

declare dso_local i64 @get_ith_rtsi_brd_reg(i32, %struct.comedi_device*) #1

declare dso_local i32 @set_ith_rtsi_brd_reg(i32, i32, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
