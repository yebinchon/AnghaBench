; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_avm_cs.c_avmcs_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_avm_cs.c_avmcs_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_2__**, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@avmcs_configcheck = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"M1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"M2\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"avm_cs: failed to add AVM-Controller at i/o %#x, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @avmcs_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avmcs_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32)*, align 8
  %8 = alloca i8*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store i32 -1, i32* %4, align 4
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %9, align 16
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i8* %17, i32 %22, i32 128)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %26 = load i32, i32* @avmcs_configcheck, align 4
  %27 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %25, i32 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %125

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %39)
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %47)
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %46, %38
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %56 = call i8* @strrchr(i8* %55, i8 signext 32)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8* %60, i8** %8, align 8
  br label %64

61:                                               ; preds = %54
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %61, %59
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 129, i32* %6, align 4
  br label %76

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 128, i32* %6, align 4
  br label %75

74:                                               ; preds = %69
  store i32 130, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %68
  br label %78

77:                                               ; preds = %50
  store i32 130, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %83 = call i32 @avmcs_release(%struct.pcmcia_device* %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %125

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  switch i32 %87, label %90 [
    i32 129, label %88
    i32 128, label %89
    i32 130, label %91
  ]

88:                                               ; preds = %86
  store i32 (i32, i32)* @b1pcmcia_addcard_m1, i32 (i32, i32)** %7, align 8
  br label %92

89:                                               ; preds = %86
  store i32 (i32, i32)* @b1pcmcia_addcard_m2, i32 (i32, i32)** %7, align 8
  br label %92

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %86, %90
  store i32 (i32, i32)* @b1pcmcia_addcard_b1, i32 (i32, i32)** %7, align 8
  br label %92

92:                                               ; preds = %91, %89, %88
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %94 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %95 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %102 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %93(i32 %100, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %92
  %107 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %108 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %107, i32 0, i32 2
  %109 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %110 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %111, i64 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %117 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %121 = call i32 @avmcs_release(%struct.pcmcia_device* %120)
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %125

124:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %106, %81, %29
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @avmcs_release(%struct.pcmcia_device*) #1

declare dso_local i32 @b1pcmcia_addcard_m1(i32, i32) #1

declare dso_local i32 @b1pcmcia_addcard_m2(i32, i32) #1

declare dso_local i32 @b1pcmcia_addcard_b1(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
