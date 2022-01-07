; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-core.c_via_pci_setup_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-core.c_via_pci_setup_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viafb_dev = type { i64, i32, i32*, i32*, i8*, %struct.TYPE_3__*, i32, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"Unable to map engine MMIO; operation will be slow and crippled.\0A\00", align 1
@UNICHROME_VX900 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viafb_dev*)* @via_pci_setup_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_pci_setup_mmio(%struct.viafb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.viafb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.viafb_dev* %0, %struct.viafb_dev** %3, align 8
  %5 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %6 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %5, i32 0, i32 5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = call i8* @pci_resource_start(%struct.TYPE_3__* %7, i32 1)
  %9 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %12 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 @pci_resource_len(%struct.TYPE_3__* %13, i32 1)
  %15 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %16 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %17, i32 0, i32 7
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %21 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32* @ioremap_nocache(i8* %19, i32 %22)
  %24 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %25 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %27 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %32 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %31, i32 0, i32 5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UNICHROME_VX900, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %44 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i8* @pci_resource_start(%struct.TYPE_3__* %45, i32 2)
  %47 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %48 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  br label %56

49:                                               ; preds = %36
  %50 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %51 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %50, i32 0, i32 5
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i8* @pci_resource_start(%struct.TYPE_3__* %52, i32 0)
  %54 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %55 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %58 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @viafb_get_fb_size_from_pci(i64 %59)
  %61 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %62 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  store i32 %60, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %102

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %88, %66
  %68 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %69 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 8388608
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %74 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %77 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @ioremap_wc(i8* %75, i32 %78)
  %80 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %81 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %83 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %93

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %90 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %90, align 8
  br label %67

93:                                               ; preds = %86, %67
  %94 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %95 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %108

102:                                              ; preds = %98, %65
  %103 = load %struct.viafb_dev*, %struct.viafb_dev** %3, align 8
  %104 = getelementptr inbounds %struct.viafb_dev, %struct.viafb_dev* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @iounmap(i32* %105)
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %101
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i8* @pci_resource_start(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.TYPE_3__*, i32) #1

declare dso_local i32* @ioremap_nocache(i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @viafb_get_fb_size_from_pci(i64) #1

declare dso_local i32* @ioremap_wc(i8*, i32) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
