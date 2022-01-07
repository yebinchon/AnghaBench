; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_extract.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }
%struct.ssb_sprom = type { i32, i32, i32, %struct.ssb_sprom*, %struct.ssb_sprom* }

@.str = private unnamed_addr constant [28 x i8] c"SPROM revision %d detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SPROM treated as revision %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Unsupported SPROM revision %d detected. Will extract v1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, %struct.ssb_sprom*, i32*, i32)* @sprom_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprom_extract(%struct.ssb_bus* %0, %struct.ssb_sprom* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.ssb_sprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %5, align 8
  store %struct.ssb_sprom* %1, %struct.ssb_sprom** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %10 = call i32 @memset(%struct.ssb_sprom* %9, i32 0, i32 32)
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  %18 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %19 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %21 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %25 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %24, i32 0, i32 4
  %26 = load %struct.ssb_sprom*, %struct.ssb_sprom** %25, align 8
  %27 = call i32 @memset(%struct.ssb_sprom* %26, i32 255, i32 6)
  %28 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %29 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %28, i32 0, i32 3
  %30 = load %struct.ssb_sprom*, %struct.ssb_sprom** %29, align 8
  %31 = call i32 @memset(%struct.ssb_sprom* %30, i32 255, i32 6)
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %33 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 65280
  %36 = icmp eq i32 %35, 17408
  br i1 %36, label %37, label %44

37:                                               ; preds = %4
  %38 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %39 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %41 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %37, %4
  %45 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %46 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %60 [
    i32 1, label %48
    i32 2, label %48
    i32 3, label %48
    i32 4, label %52
    i32 5, label %52
    i32 8, label %56
  ]

48:                                               ; preds = %44, %44, %44
  %49 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @sprom_extract_r123(%struct.ssb_sprom* %49, i32* %50)
  br label %70

52:                                               ; preds = %44, %44
  %53 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @sprom_extract_r45(%struct.ssb_sprom* %53, i32* %54)
  br label %70

56:                                               ; preds = %44
  %57 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @sprom_extract_r8(%struct.ssb_sprom* %57, i32* %58)
  br label %70

60:                                               ; preds = %44
  %61 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %62 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %66 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @sprom_extract_r123(%struct.ssb_sprom* %67, i32* %68)
  br label %70

70:                                               ; preds = %60, %56, %52, %48
  %71 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %72 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 65535
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %77 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %80 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 65535
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %85 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  ret i32 0
}

declare dso_local i32 @memset(%struct.ssb_sprom*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sprom_extract_r123(%struct.ssb_sprom*, i32*) #1

declare dso_local i32 @sprom_extract_r45(%struct.ssb_sprom*, i32*) #1

declare dso_local i32 @sprom_extract_r8(%struct.ssb_sprom*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
