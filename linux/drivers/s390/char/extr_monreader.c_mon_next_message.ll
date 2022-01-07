; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_mon_next_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_mon_next_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_msg = type { i64, i64, i64, i64 }
%struct.mon_private = type { i64, i32, %struct.mon_msg** }

@MON_MSGLIM = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mon_msg* (%struct.mon_private*)* @mon_next_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mon_msg* @mon_next_message(%struct.mon_private* %0) #0 {
  %2 = alloca %struct.mon_msg*, align 8
  %3 = alloca %struct.mon_private*, align 8
  %4 = alloca %struct.mon_msg*, align 8
  store %struct.mon_private* %0, %struct.mon_private** %3, align 8
  %5 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %6 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %5, i32 0, i32 1
  %7 = call i32 @atomic_read(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mon_msg* null, %struct.mon_msg** %2, align 8
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %12 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %11, i32 0, i32 2
  %13 = load %struct.mon_msg**, %struct.mon_msg*** %12, align 8
  %14 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %15 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.mon_msg*, %struct.mon_msg** %13, i64 %16
  %18 = load %struct.mon_msg*, %struct.mon_msg** %17, align 8
  store %struct.mon_msg* %18, %struct.mon_msg** %4, align 8
  %19 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %20 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @unlikely(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %10
  %25 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %26 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %28 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %30 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %32 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %34 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  %37 = load i32, i32* @MON_MSGLIM, align 4
  %38 = sext i32 %37 to i64
  %39 = urem i64 %36, %38
  %40 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %41 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %43 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %42, i32 0, i32 1
  %44 = call i32 @atomic_dec(i32* %43)
  %45 = load i32, i32* @EOVERFLOW, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.mon_msg* @ERR_PTR(i32 %46)
  store %struct.mon_msg* %47, %struct.mon_msg** %2, align 8
  br label %50

48:                                               ; preds = %10
  %49 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  store %struct.mon_msg* %49, %struct.mon_msg** %2, align 8
  br label %50

50:                                               ; preds = %48, %24, %9
  %51 = load %struct.mon_msg*, %struct.mon_msg** %2, align 8
  ret %struct.mon_msg* %51
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.mon_msg* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
