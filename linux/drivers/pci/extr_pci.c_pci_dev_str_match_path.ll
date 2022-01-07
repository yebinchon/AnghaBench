; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_str_match_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_dev_str_match_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/%x.%x%c\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%x:%x:%x.%x%c\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%x:%x.%x%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*, i8**)* @pci_dev_str_match_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dev_str_match_path(%struct.pci_dev* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strchrnul(i8* %16, i8 signext 59)
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmemdup_nul(i8* %19, i32 %26, i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %110

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %64
  %36 = load i8*, i8** %13, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 47)
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %66

41:                                               ; preds = %35
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i8* %15)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %106

49:                                               ; preds = %41
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @PCI_DEVFN(i32 %53, i32 %54)
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %106

58:                                               ; preds = %49
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %59)
  store %struct.pci_dev* %60, %struct.pci_dev** %5, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = icmp ne %struct.pci_dev* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %106

64:                                               ; preds = %58
  %65 = load i8*, i8** %14, align 8
  store i8 0, i8* %65, align 1
  br label %35

66:                                               ; preds = %40
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %10, i32* %11, i32* %12, i8* %15)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 4
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i8* %15)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 3
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %106

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = call i32 @pci_domain_nr(%struct.TYPE_2__* %84)
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @PCI_DEVFN(i32 %99, i32 %100)
  %102 = icmp eq i64 %98, %101
  br label %103

103:                                              ; preds = %95, %87, %80
  %104 = phi i1 [ false, %87 ], [ false, %80 ], [ %102, %95 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %76, %63, %57, %46
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %31
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i8* @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i64 @PCI_DEVFN(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
