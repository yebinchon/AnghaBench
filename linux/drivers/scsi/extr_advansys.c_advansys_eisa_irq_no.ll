; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_eisa_irq_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_eisa_irq_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eisa_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eisa_device*)* @advansys_eisa_irq_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_eisa_irq_no(%struct.eisa_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eisa_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.eisa_device* %0, %struct.eisa_device** %3, align 8
  %6 = load %struct.eisa_device*, %struct.eisa_device** %3, align 8
  %7 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 3206
  %10 = call zeroext i16 @inw(i64 %9)
  store i16 %10, i16* %4, align 2
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 7
  %15 = add nsw i32 %14, 10
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ugt i32 %19, 15
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local zeroext i16 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
