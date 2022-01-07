; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_card.c_ap_card_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_card.c_ap_card_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_card = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ap_card_device_release = common dso_local global i32 0, align 4
@ap_card_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ap_card* @ap_card_create(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ap_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ap_card*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ap_card* @kzalloc(i32 48, i32 %13)
  store %struct.ap_card* %14, %struct.ap_card** %12, align 8
  %15 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %16 = icmp ne %struct.ap_card* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.ap_card* null, %struct.ap_card** %6, align 8
  br label %51

18:                                               ; preds = %5
  %19 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %20 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %19, i32 0, i32 6
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %23 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %22, i32 0, i32 5
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load i32, i32* @ap_card_device_release, align 4
  %26 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %27 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %31 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* @ap_card_type, i32** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %36 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %40 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %43 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %46 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  %49 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ap_card*, %struct.ap_card** %12, align 8
  store %struct.ap_card* %50, %struct.ap_card** %6, align 8
  br label %51

51:                                               ; preds = %18, %17
  %52 = load %struct.ap_card*, %struct.ap_card** %6, align 8
  ret %struct.ap_card* %52
}

declare dso_local %struct.ap_card* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
