; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd1201 = type { i64, i64 }

@ZD1201_RID_PROMISCUOUSMODE = common dso_local global i32 0, align 4
@ZD1201_CMDCODE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd1201*)* @zd1201_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_disable(%struct.zd1201* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd1201*, align 8
  %4 = alloca i32, align 4
  store %struct.zd1201* %0, %struct.zd1201** %3, align 8
  %5 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %6 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %12 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %17 = load i32, i32* @ZD1201_RID_PROMISCUOUSMODE, align 4
  %18 = call i32 @zd1201_setconfig16(%struct.zd1201* %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %10
  %25 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %26 = load i32, i32* @ZD1201_CMDCODE_DISABLE, align 4
  %27 = call i32 @zd1201_docmd(%struct.zd1201* %25, i32 %26, i32 0, i32 0, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %32 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %21, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i32) #1

declare dso_local i32 @zd1201_docmd(%struct.zd1201*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
