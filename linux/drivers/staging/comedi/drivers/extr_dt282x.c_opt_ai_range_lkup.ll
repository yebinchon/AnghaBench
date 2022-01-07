; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_opt_ai_range_lkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_opt_ai_range_lkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_lrange = type { i32 }

@ai_range_pgl_table = common dso_local global %struct.comedi_lrange** null, align 8
@ai_range_table = common dso_local global %struct.comedi_lrange** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_lrange* (i32, i32)* @opt_ai_range_lkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_lrange* @opt_ai_range_lkup(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_lrange*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load %struct.comedi_lrange**, %struct.comedi_lrange*** @ai_range_pgl_table, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %16, i64 %18
  %20 = load %struct.comedi_lrange*, %struct.comedi_lrange** %19, align 8
  store %struct.comedi_lrange* %20, %struct.comedi_lrange** %3, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.comedi_lrange**, %struct.comedi_lrange*** @ai_range_table, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %29, i64 %31
  %33 = load %struct.comedi_lrange*, %struct.comedi_lrange** %32, align 8
  store %struct.comedi_lrange* %33, %struct.comedi_lrange** %3, align 8
  br label %34

34:                                               ; preds = %28, %15
  %35 = load %struct.comedi_lrange*, %struct.comedi_lrange** %3, align 8
  ret %struct.comedi_lrange* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
