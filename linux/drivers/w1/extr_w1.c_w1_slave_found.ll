; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_slave_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1.c_w1_slave_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32 }
%struct.w1_slave = type { i32 }
%struct.w1_reg_num = type { i64 }

@W1_SLAVE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @w1_slave_found(%struct.w1_master* %0, i64 %1) #0 {
  %3 = alloca %struct.w1_master*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca %struct.w1_reg_num*, align 8
  %7 = alloca i64, align 8
  store %struct.w1_master* %0, %struct.w1_master** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @cpu_to_le64(i64 %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %11 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = bitcast i64* %4 to %struct.w1_reg_num*
  store %struct.w1_reg_num* %13, %struct.w1_reg_num** %6, align 8
  %14 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %15 = load %struct.w1_reg_num*, %struct.w1_reg_num** %6, align 8
  %16 = call %struct.w1_slave* @w1_slave_search_device(%struct.w1_master* %14, %struct.w1_reg_num* %15)
  store %struct.w1_slave* %16, %struct.w1_slave** %5, align 8
  %17 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %18 = icmp ne %struct.w1_slave* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @W1_SLAVE_ACTIVE, align 4
  %21 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %22 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  br label %39

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.w1_reg_num*, %struct.w1_reg_num** %6, align 8
  %29 = getelementptr inbounds %struct.w1_reg_num, %struct.w1_reg_num* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = bitcast i64* %7 to i32*
  %32 = call i64 @w1_calc_crc8(i32* %31, i32 7)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %36 = load %struct.w1_reg_num*, %struct.w1_reg_num** %6, align 8
  %37 = call i32 @w1_attach_slave_device(%struct.w1_master* %35, %struct.w1_reg_num* %36)
  br label %38

38:                                               ; preds = %34, %27, %24
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %41 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %40, i32 0, i32 0
  %42 = call i32 @atomic_dec(i32* %41)
  ret void
}

declare dso_local i64 @cpu_to_le64(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.w1_slave* @w1_slave_search_device(%struct.w1_master*, %struct.w1_reg_num*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @w1_calc_crc8(i32*, i32) #1

declare dso_local i32 @w1_attach_slave_device(%struct.w1_master*, %struct.w1_reg_num*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
