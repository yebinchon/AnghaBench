; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_std_req_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_std_req_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_ADRS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*)* @std_req_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_req_set_address(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbu2ss_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %7 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %12 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %18 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %24 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16, %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 127
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %31
  %40 = load i32, i32* @USB_ADRS_SHIFT, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %44 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @_nbu2ss_writel(i32* %46, i32 %47)
  %49 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %50 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %51 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @_nbu2ss_create_ep0_packet(%struct.nbu2ss_udc* %49, i32 %52, i32 0)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %39, %36, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

declare dso_local i32 @_nbu2ss_create_ep0_packet(%struct.nbu2ss_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
