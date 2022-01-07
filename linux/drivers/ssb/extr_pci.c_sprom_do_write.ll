; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_sprom_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Writing SPROM. Do NOT turn off the power! Please stand by...\0A\00", align 1
@SSB_SPROMCTL = common dso_local global i32 0, align 4
@SSB_SPROMCTL_WE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[ 0%%\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"25%%\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"50%%\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"75%%\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"100%% ]\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SPROM written\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Could not access SPROM control register.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32*)* @sprom_do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprom_do_write(%struct.ssb_bus* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %15 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = call i32 @pr_notice(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %19 = load i32, i32* @SSB_SPROMCTL, align 4
  %20 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i32 %19, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %118

24:                                               ; preds = %2
  %25 = load i32, i32* @SSB_SPROMCTL_WE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = load i32, i32* @SSB_SPROMCTL, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @pci_write_config_dword(%struct.pci_dev* %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %118

35:                                               ; preds = %24
  %36 = call i32 @pr_notice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @msleep(i32 500)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %92, %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %95

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sdiv i32 %44, 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %73

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sdiv i32 %51, 2
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %72

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %58, 3
  %60 = sdiv i32 %59, 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %71

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = srem i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %80 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %83 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = call i32 @writew(i32 %78, i64 %89)
  %91 = call i32 @msleep(i32 20)
  br label %92

92:                                               ; preds = %73
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %38

95:                                               ; preds = %38
  %96 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %97 = load i32, i32* @SSB_SPROMCTL, align 4
  %98 = call i32 @pci_read_config_dword(%struct.pci_dev* %96, i32 %97, i32* %9)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %118

102:                                              ; preds = %95
  %103 = load i32, i32* @SSB_SPROMCTL_WE, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %108 = load i32, i32* @SSB_SPROMCTL, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @pci_write_config_dword(%struct.pci_dev* %107, i32 %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %118

114:                                              ; preds = %102
  %115 = call i32 @msleep(i32 500)
  %116 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %117 = call i32 @pr_notice(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

118:                                              ; preds = %113, %101, %34, %23
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
