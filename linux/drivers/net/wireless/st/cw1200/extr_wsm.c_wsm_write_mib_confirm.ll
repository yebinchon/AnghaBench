; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_write_mib_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_write_mib_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_mib = type { i64, i8* }
%struct.wsm_buf = type { i32 }

@WSM_MIB_ID_OPERATIONAL_POWER_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_mib*, %struct.wsm_buf*)* @wsm_write_mib_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_write_mib_confirm(%struct.cw1200_common* %0, %struct.wsm_mib* %1, %struct.wsm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.wsm_mib*, align 8
  %7 = alloca %struct.wsm_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.wsm_mib* %1, %struct.wsm_mib** %6, align 8
  store %struct.wsm_buf* %2, %struct.wsm_buf** %7, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %11 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %13 = call i32 @wsm_generic_confirm(%struct.cw1200_common* %10, %struct.wsm_mib* %11, %struct.wsm_buf* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %20 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WSM_MIB_ID_OPERATIONAL_POWER_MODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %26 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = and i32 %32, 15
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = call i32 @cw1200_enable_powersave(%struct.cw1200_common* %28, i32 %36)
  br label %38

38:                                               ; preds = %24, %18
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @wsm_generic_confirm(%struct.cw1200_common*, %struct.wsm_mib*, %struct.wsm_buf*) #1

declare dso_local i32 @cw1200_enable_powersave(%struct.cw1200_common*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
