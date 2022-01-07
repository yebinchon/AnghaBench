; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_std_req_set_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_std_req_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, %struct.TYPE_3__*, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CONF = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*)* @std_req_set_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_req_set_configuration(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbu2ss_udc*, align 8
  %4 = alloca i64, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %3, align 8
  %5 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %6 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  %10 = and i32 %9, 255
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %19 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %25 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17, %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %35 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %40 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* @CONF, align 4
  %44 = call i32 @_nbu2ss_bitset(i32* %42, i32 %43)
  %45 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %46 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %47 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %58

48:                                               ; preds = %32
  %49 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %50 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* @CONF, align 4
  %54 = call i32 @_nbu2ss_bitclr(i32* %52, i32 %53)
  %55 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %56 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %57 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %48, %38
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @_nbu2ss_bitset(i32*, i32) #1

declare dso_local i32 @_nbu2ss_bitclr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
