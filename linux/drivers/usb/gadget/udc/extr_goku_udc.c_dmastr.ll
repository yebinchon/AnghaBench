; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_dmastr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_dmastr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_dma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"(dma disabled)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"(dma IN and OUT)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(dma IN)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @dmastr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dmastr() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @use_dma, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @use_dma, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %10

9:                                                ; preds = %5
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %10

10:                                               ; preds = %9, %8, %4
  %11 = load i8*, i8** %1, align 8
  ret i8* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
