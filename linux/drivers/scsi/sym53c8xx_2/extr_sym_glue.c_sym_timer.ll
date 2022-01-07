; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@SYM_CONF_TIMER_INTERVAL = common dso_local global i64 0, align 8
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: command processing resumed\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*)* @sym_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_timer(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  %3 = alloca i64, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @SYM_CONF_TIMER_INTERVAL, align 8
  %7 = add i64 %5, %6
  %8 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %9 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 %7, i64* %11, align 8
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %13 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = call i32 @add_timer(%struct.TYPE_4__* %14)
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %17 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %23 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @time_before_eq(i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32, i32* @sym_verbose, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %34 = call i32 @sym_name(%struct.sym_hcb* %33)
  %35 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %38 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %21
  br label %58

41:                                               ; preds = %1
  %42 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %43 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 4, %46
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %3, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i64, i64* %3, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %56 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  br label %58

58:                                               ; preds = %40, %52, %41
  ret void
}

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i64 @time_before_eq(i32, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @sym_name(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
