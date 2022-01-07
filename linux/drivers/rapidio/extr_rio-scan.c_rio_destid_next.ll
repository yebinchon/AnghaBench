; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-scan.c_rio_destid_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-scan.c_rio_destid_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_net = type { i64 }
%struct.rio_id_table = type { i32, i32, i64, i32 }

@RIO_INVALID_DESTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_net*, i32)* @rio_destid_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_destid_next(%struct.rio_net* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_id_table*, align 8
  store %struct.rio_net* %0, %struct.rio_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rio_net*, %struct.rio_net** %3, align 8
  %8 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.rio_id_table*
  store %struct.rio_id_table* %10, %struct.rio_id_table** %6, align 8
  %11 = load %struct.rio_id_table*, %struct.rio_id_table** %6, align 8
  %12 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.rio_id_table*, %struct.rio_id_table** %6, align 8
  %15 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rio_id_table*, %struct.rio_id_table** %6, align 8
  %18 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @find_next_bit(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.rio_id_table*, %struct.rio_id_table** %6, align 8
  %24 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @RIO_INVALID_DESTID, align 4
  store i32 %28, i32* %5, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.rio_id_table*, %struct.rio_id_table** %6, align 8
  %31 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %27
  %38 = load %struct.rio_id_table*, %struct.rio_id_table** %6, align 8
  %39 = getelementptr inbounds %struct.rio_id_table, %struct.rio_id_table* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
