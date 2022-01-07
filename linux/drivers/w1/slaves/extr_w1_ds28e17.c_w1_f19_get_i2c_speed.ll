; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_get_i2c_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_get_i2c_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_3__*, %struct.w1_f19_data* }
%struct.TYPE_3__ = type { i32 }
%struct.w1_f19_data = type { i32 }

@EIO = common dso_local global i32 0, align 4
@W1_F19_READ_CONFIGURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_f19_get_i2c_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f19_get_i2c_speed(%struct.w1_slave* %0) #0 {
  %2 = alloca %struct.w1_slave*, align 8
  %3 = alloca %struct.w1_f19_data*, align 8
  %4 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %2, align 8
  %5 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %6 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %5, i32 0, i32 1
  %7 = load %struct.w1_f19_data*, %struct.w1_f19_data** %6, align 8
  store %struct.w1_f19_data* %7, %struct.w1_f19_data** %3, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %11 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %16 = call i64 @w1_reset_select_slave(%struct.w1_slave* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %41

19:                                               ; preds = %1
  %20 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %21 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* @W1_F19_READ_CONFIGURATION, align 4
  %24 = call i32 @w1_write_8(%struct.TYPE_3__* %22, i32 %23)
  %25 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %26 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @w1_read_8(%struct.TYPE_3__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %19
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.w1_f19_data*, %struct.w1_f19_data** %3, align 8
  %40 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34, %18
  %42 = load %struct.w1_slave*, %struct.w1_slave** %2, align 8
  %43 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_8(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @w1_read_8(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
