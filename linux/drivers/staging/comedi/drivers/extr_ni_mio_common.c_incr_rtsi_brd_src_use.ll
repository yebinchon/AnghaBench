; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_incr_rtsi_brd_src_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_incr_rtsi_brd_src_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUM_RTSI_SHARED_MUXS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comedi_device*)* @incr_rtsi_brd_src_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incr_rtsi_brd_src_use(i32 %0, %struct.comedi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.ni_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.comedi_device* %1, %struct.comedi_device** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  store %struct.ni_private* %13, %struct.ni_private** %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %57, %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @NUM_RTSI_SHARED_MUXS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @NI_RTSI_BRD(i32 %23)
  %25 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %26 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %25, i32 0, i32 1
  %27 = call i64 @ni_lookup_route_register(i32 %22, i32 %24, i32* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %57

31:                                               ; preds = %20
  %32 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %33 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %40
  br label %56

46:                                               ; preds = %31
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = call i64 @get_ith_rtsi_brd_reg(i32 %49, %struct.comedi_device* %50)
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %67

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %82

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %54
  %68 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %69 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = call i32 @set_ith_rtsi_brd_reg(i32 %76, i64 %77, %struct.comedi_device* %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @NI_RTSI_BRD(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %67, %63
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @ni_lookup_route_register(i32, i32, i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_RTSI_BRD(i32) #1

declare dso_local i64 @get_ith_rtsi_brd_reg(i32, %struct.comedi_device*) #1

declare dso_local i32 @set_ith_rtsi_brd_reg(i32, i64, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
