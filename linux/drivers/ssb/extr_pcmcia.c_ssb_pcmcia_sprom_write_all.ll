; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_write_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_sprom_write_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SSB_PCMCIA_SPROM_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Writing SPROM. Do NOT turn off the power! Please stand by...\0A\00", align 1
@SSB_PCMCIA_SPROMCTL_WRITEEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not enable SPROM write access\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"[ 0%%\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"25%%\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"50%%\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"75%%\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to write to SPROM\0A\00", align 1
@SSB_PCMCIA_SPROMCTL_WRITEDIS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Could not disable SPROM write access\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"100%% ]\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"SPROM written\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32*)* @ssb_pcmcia_sprom_write_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcmcia_sprom_write_all(%struct.ssb_bus* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* @SSB_PCMCIA_SPROM_SIZE, align 8
  store i64 %10, i64* %9, align 8
  %11 = call i32 @pr_notice(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %13 = load i32, i32* @SSB_PCMCIA_SPROMCTL_WRITEEN, align 4
  %14 = call i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %104

21:                                               ; preds = %2
  %22 = call i32 @pr_notice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @msleep(i32 500)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %77, %21
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = udiv i64 %32, 4
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %63

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = udiv i64 %40, 2
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %62

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %9, align 8
  %49 = mul i64 %48, 3
  %50 = udiv i64 %49, 4
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %61

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = srem i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ssb_pcmcia_sprom_write(%struct.ssb_bus* %64, i32 %65, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %80

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %24

80:                                               ; preds = %74, %24
  %81 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %82 = load i32, i32* @SSB_PCMCIA_SPROMCTL_WRITEDIS, align 4
  %83 = call i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 @pr_notice(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = call i32 @msleep(i32 500)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %94 = call i32 @pr_notice(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ]
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @ssb_pcmcia_sprom_command(%struct.ssb_bus*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @ssb_pcmcia_sprom_write(%struct.ssb_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
