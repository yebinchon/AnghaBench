; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-scan.c_rio_destid_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-scan.c_rio_destid_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_net = type { i64 }
%struct.rio_id_table = type { i32, i32, i64, i32 }

@RIO_INVALID_DESTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_net*)* @rio_destid_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_destid_alloc(%struct.rio_net* %0) #0 {
  %2 = alloca %struct.rio_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rio_id_table*, align 8
  store %struct.rio_net* %0, %struct.rio_net** %2, align 8
  %5 = load %struct.rio_net*, %struct.rio_net** %2, align 8
  %6 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rio_id_table*
  store %struct.rio_id_table* %8, %struct.rio_id_table** %4, align 8
  %9 = load %struct.rio_id_table*, %struct.rio_id_table** %4, align 8
  %10 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.rio_id_table*, %struct.rio_id_table** %4, align 8
  %13 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rio_id_table*, %struct.rio_id_table** %4, align 8
  %16 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @find_first_zero_bit(i32 %14, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.rio_id_table*, %struct.rio_id_table** %4, align 8
  %21 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.rio_id_table*, %struct.rio_id_table** %4, align 8
  %27 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @set_bit(i32 %25, i32 %28)
  %30 = load %struct.rio_id_table*, %struct.rio_id_table** %4, align 8
  %31 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @RIO_INVALID_DESTID, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = load %struct.rio_id_table*, %struct.rio_id_table** %4, align 8
  %41 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
