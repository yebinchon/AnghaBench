; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_make_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_make_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dev_attr_card_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not create sysfs file for card_type\0A\00", align 1
@dev_attr_open_ttys = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not create sysfs file for open_ttys\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nozomi*)* @make_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_sysfs_files(%struct.nozomi* %0) #0 {
  %2 = alloca %struct.nozomi*, align 8
  store %struct.nozomi* %0, %struct.nozomi** %2, align 8
  %3 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %4 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i64 @device_create_file(i32* %6, i32* @dev_attr_card_type)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %11 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %17 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @device_create_file(i32* %19, i32* @dev_attr_open_ttys)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %24 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %15
  ret void
}

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
