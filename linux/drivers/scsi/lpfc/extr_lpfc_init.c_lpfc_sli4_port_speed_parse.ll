; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_port_speed_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_port_speed_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32, i32)* @lpfc_sli4_port_speed_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_port_speed_parse(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %35 [
    i32 128, label %9
    i32 129, label %21
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %19 [
    i32 140, label %11
    i32 145, label %12
    i32 147, label %13
    i32 144, label %14
    i32 146, label %15
    i32 143, label %16
    i32 142, label %17
    i32 141, label %18
  ]

11:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %20

12:                                               ; preds = %9
  store i32 10, i32* %7, align 4
  br label %20

13:                                               ; preds = %9
  store i32 100, i32* %7, align 4
  br label %20

14:                                               ; preds = %9
  store i32 1000, i32* %7, align 4
  br label %20

15:                                               ; preds = %9
  store i32 10000, i32* %7, align 4
  br label %20

16:                                               ; preds = %9
  store i32 20000, i32* %7, align 4
  br label %20

17:                                               ; preds = %9
  store i32 25000, i32* %7, align 4
  br label %20

18:                                               ; preds = %9
  store i32 40000, i32* %7, align 4
  br label %20

19:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11
  br label %36

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %33 [
    i32 130, label %23
    i32 136, label %24
    i32 135, label %25
    i32 133, label %26
    i32 131, label %27
    i32 139, label %28
    i32 137, label %29
    i32 134, label %30
    i32 132, label %31
    i32 138, label %32
  ]

23:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %34

24:                                               ; preds = %21
  store i32 1000, i32* %7, align 4
  br label %34

25:                                               ; preds = %21
  store i32 2000, i32* %7, align 4
  br label %34

26:                                               ; preds = %21
  store i32 4000, i32* %7, align 4
  br label %34

27:                                               ; preds = %21
  store i32 8000, i32* %7, align 4
  br label %34

28:                                               ; preds = %21
  store i32 10000, i32* %7, align 4
  br label %34

29:                                               ; preds = %21
  store i32 16000, i32* %7, align 4
  br label %34

30:                                               ; preds = %21
  store i32 32000, i32* %7, align 4
  br label %34

31:                                               ; preds = %21
  store i32 64000, i32* %7, align 4
  br label %34

32:                                               ; preds = %21
  store i32 128000, i32* %7, align 4
  br label %34

33:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34, %20
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
