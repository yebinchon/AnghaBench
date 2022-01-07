; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_show_yenta_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_show_yenta_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32 }
%struct.yenta_socket = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"CB registers:\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\0A%02x:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A\0AExCA registers:\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_yenta_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_yenta_registers(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.yenta_socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(%struct.device* %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = call %struct.yenta_socket* @pci_get_drvdata(%struct.pci_dev* %15)
  store %struct.yenta_socket* %16, %struct.yenta_socket** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %56, %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 36
  br i1 %22, label %23, label %59

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 15
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %31, i64 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %27, %23
  %41 = load %struct.yenta_socket*, %struct.yenta_socket** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @cb_readl(%struct.yenta_socket* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %47, i64 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %10, align 4
  br label %20

59:                                               ; preds = %20
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %64, %66
  %68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %63, i64 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %121, %59
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 69
  br i1 %73, label %74, label %124

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 7
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i32 @memcpy(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %9, align 4
  br label %103

90:                                               ; preds = %78
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i64, i64* @PAGE_SIZE, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %94, i64 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %90, %82
  br label %104

104:                                              ; preds = %103, %74
  %105 = load %struct.yenta_socket*, %struct.yenta_socket** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call zeroext i8 @exca_readb(%struct.yenta_socket* %105, i32 %106)
  store i8 %107, i8* %12, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = load i8, i8* %12, align 1
  %117 = zext i8 %116 to i32
  %118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %111, i64 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %71

124:                                              ; preds = %71
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  store i8 10, i8* %129, align 1
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.yenta_socket* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @cb_readl(%struct.yenta_socket*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i8 @exca_readb(%struct.yenta_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
