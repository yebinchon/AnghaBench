; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_reset_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_reset_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.isi_board = type { i64, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ISILoad:Resetting Card%d at 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"ISILoad:Card%u reset failure (Possible bad I/O Port Address 0x%lx).\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Sig=0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"ISILoad:PCI Card%d reset failure.\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-Done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32*)* @reset_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_card(%struct.pci_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.isi_board*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call %struct.isi_board* @pci_get_drvdata(%struct.pci_dev* %12)
  store %struct.isi_board* %13, %struct.isi_board** %7, align 8
  %14 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %15 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21)
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 8
  %25 = call i32 @inw(i64 %24)
  %26 = call i32 @msleep(i32 10)
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 8
  %29 = call i32 @outw(i32 0, i64 %28)
  %30 = call i32 @msleep(i32 1000)
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 4
  %33 = call i32 @inw(i64 %32)
  %34 = and i32 %33, 255
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 165
  br i1 %36, label %37, label %62

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 187
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 204
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 221
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 238
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %114

62:                                               ; preds = %46, %43, %40, %37, %3
  %63 = call i32 @msleep(i32 10)
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 2
  %66 = call i32 @inw(i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 14
  %69 = call i32 @inw(i64 %68)
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 4
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 8
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 16
  br i1 %83, label %84, label %92

84:                                               ; preds = %81, %62
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, 1
  %89 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %114

92:                                               ; preds = %81, %78, %75, %72
  %93 = load i32, i32* %9, align 4
  switch i32 %93, label %108 [
    i32 165, label %94
    i32 187, label %94
    i32 221, label %94
    i32 204, label %103
    i32 238, label %103
  ]

94:                                               ; preds = %92, %92, %92
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 4
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 4, i32 8
  %99 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %100 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %102 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %101, i32 0, i32 2
  store i32 12, i32* %102, align 4
  br label %108

103:                                              ; preds = %92, %92
  %104 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %105 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %104, i32 0, i32 1
  store i32 16, i32* %105, align 8
  %106 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %107 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %106, i32 0, i32 2
  store i32 11, i32* %107, align 4
  br label %108

108:                                              ; preds = %92, %103, %94
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = call i32 @dev_info(i32* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %84, %49
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local %struct.isi_board* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
