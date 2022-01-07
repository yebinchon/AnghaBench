; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_str_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_str_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [5 x i8] c"pci:\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%hx:%hx:%hx:%hx%n\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%hx:%hx%n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*, i8**)* @pci_dev_str_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dev_str_match(%struct.pci_dev* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i8*, i16*, i16*, ...) @sscanf(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i16* %10, i16* %11, i16* %12, i16* %13, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 (i8*, i8*, i16*, i16*, ...) @sscanf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i16* %10, i16* %11, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %103

32:                                               ; preds = %24
  store i16 0, i16* %12, align 2
  store i16 0, i16* %13, align 2
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %6, align 8
  %38 = load i16, i16* %10, align 2
  %39 = icmp ne i16 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i16, i16* %10, align 2
  %42 = zext i16 %41 to i32
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %40, %33
  %49 = load i16, i16* %11, align 2
  %50 = icmp ne i16 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i16, i16* %11, align 2
  %53 = zext i16 %52 to i32
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %51, %48
  %60 = load i16, i16* %12, align 2
  %61 = icmp ne i16 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i16, i16* %12, align 2
  %64 = zext i16 %63 to i32
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 2
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %64, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %62, %59
  %71 = load i16, i16* %13, align 2
  %72 = icmp ne i16 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i16, i16* %13, align 2
  %75 = zext i16 %74 to i32
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 3
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %70
  br label %100

82:                                               ; preds = %73, %62, %51, %40
  br label %97

83:                                               ; preds = %3
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @pci_dev_str_match_path(%struct.pci_dev* %84, i8* %85, i8** %6)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %103

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %100

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i8*, i8** %6, align 8
  %99 = load i8**, i8*** %7, align 8
  store i8* %98, i8** %99, align 8
  store i32 0, i32* %4, align 4
  br label %103

100:                                              ; preds = %94, %81
  %101 = load i8*, i8** %6, align 8
  %102 = load i8**, i8*** %7, align 8
  store i8* %101, i8** %102, align 8
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %97, %89, %29
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i16*, i16*, ...) #1

declare dso_local i32 @pci_dev_str_match_path(%struct.pci_dev*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
