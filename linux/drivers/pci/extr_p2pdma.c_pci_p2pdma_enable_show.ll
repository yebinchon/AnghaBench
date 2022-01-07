; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_enable_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_enable_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_p2pdma_enable_show(i8* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  br label %24

13:                                               ; preds = %3
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = call i8* @pci_name(%struct.pci_dev* %21)
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %16, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
