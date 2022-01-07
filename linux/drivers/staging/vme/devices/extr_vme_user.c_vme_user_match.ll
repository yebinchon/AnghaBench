; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dev = type { i32 }

@bus_num = common dso_local global i32 0, align 4
@bus = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_dev*)* @vme_user_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vme_user_match(%struct.vme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vme_dev* %0, %struct.vme_dev** %3, align 8
  %7 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %8 = call i32 @vme_bus_num(%struct.vme_dev* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %10 = call i32 @vme_slot_num(%struct.vme_dev* %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @bus_num, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** @bus, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.vme_dev*, %struct.vme_dev** %3, align 8
  %26 = getelementptr inbounds %struct.vme_dev, %struct.vme_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %35

30:                                               ; preds = %23, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %11

34:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @vme_bus_num(%struct.vme_dev*) #1

declare dso_local i32 @vme_slot_num(%struct.vme_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
