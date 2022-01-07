; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_evaluate_tmf_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_evaluate_tmf_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.CommandList = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unknown TMF status: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_evaluate_tmf_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_evaluate_tmf_status(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.CommandList*, align 8
  %6 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.CommandList* %1, %struct.CommandList** %5, align 8
  %7 = load %struct.CommandList*, %struct.CommandList** %5, align 8
  %8 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %15 [
    i32 134, label %13
    i32 129, label %13
    i32 132, label %14
    i32 131, label %14
    i32 133, label %14
    i32 128, label %14
    i32 130, label %14
  ]

13:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %25

14:                                               ; preds = %2, %2, %2, %2, %2
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %17 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
