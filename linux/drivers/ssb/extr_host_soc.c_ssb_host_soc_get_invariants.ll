; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_host_soc.c_ssb_host_soc_get_invariants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_host_soc.c_ssb_host_soc_get_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }
%struct.ssb_init_invariants = type { i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"boardvendor\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Couldn't parse nvram board vendor entry with value \22%s\22\0A\00", align 1
@SSB_BOARDVENDOR_BCM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"boardtype\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Couldn't parse nvram board type entry with value \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cardbus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_host_soc_get_invariants(%struct.ssb_bus* %0, %struct.ssb_init_invariants* %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_init_invariants*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store %struct.ssb_init_invariants* %1, %struct.ssb_init_invariants** %4, align 8
  %8 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %9 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %8, i32 0, i32 2
  %10 = call i32 @memset(%struct.TYPE_3__* %9, i32 0, i32 4)
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %12 = call i32 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11, i32 20)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %17 = call i32 @strim(i8* %16)
  %18 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %19 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i32 @kstrtou16(i32 %17, i32 0, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %30 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @SSB_BOARDVENDOR_BCM, align 4
  %36 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %37 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %41 = call i32 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 20)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %46 = call i32 @strim(i8* %45)
  %47 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %48 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @kstrtou16(i32 %46, i32 0, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %55 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %44
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %59 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %58, i32 0, i32 1
  %60 = call i32 @memset(%struct.TYPE_3__* %59, i32 0, i32 4)
  %61 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %62 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %63 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %62, i32 0, i32 1
  %64 = call i32 @ssb_fill_sprom_with_fallback(%struct.ssb_bus* %61, %struct.TYPE_3__* %63)
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %66 = call i32 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %65, i32 20)
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %70 = call i32 @simple_strtoul(i8* %69, i32* null, i32 10)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %4, align 8
  %76 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %57
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @bcm47xx_nvram_getenv(i8*, i8*, i32) #1

declare dso_local i32 @kstrtou16(i32, i32, i32*) #1

declare dso_local i32 @strim(i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @ssb_fill_sprom_with_fallback(%struct.ssb_bus*, %struct.TYPE_3__*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
