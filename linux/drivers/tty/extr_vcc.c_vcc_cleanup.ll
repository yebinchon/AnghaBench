; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.vcc_port*, i32 }
%struct.vcc_port = type { %struct.vcc_port*, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { %struct.vcc_port* }

@.str = private unnamed_addr constant [34 x i8] c"VCC: cleanup: Invalid TTY handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @vcc_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_cleanup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.vcc_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = icmp ne %struct.tty_struct* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.vcc_port* @vcc_get(i32 %15, i32 1)
  store %struct.vcc_port* %16, %struct.vcc_port** %3, align 8
  %17 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %18 = icmp ne %struct.vcc_port* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %12
  %20 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %21 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %23 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vcc_table_remove(i32 %29)
  %31 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %32 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.vcc_port*, %struct.vcc_port** %33, align 8
  %35 = call i32 @kfree(%struct.vcc_port* %34)
  %36 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %37 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %36, i32 0, i32 0
  %38 = load %struct.vcc_port*, %struct.vcc_port** %37, align 8
  %39 = call i32 @kfree(%struct.vcc_port* %38)
  %40 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %41 = call i32 @kfree(%struct.vcc_port* %40)
  br label %45

42:                                               ; preds = %19
  %43 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %44 = call i32 @vcc_put(%struct.vcc_port* %43, i32 1)
  br label %45

45:                                               ; preds = %42, %26
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 0
  %49 = load %struct.vcc_port*, %struct.vcc_port** %48, align 8
  %50 = call i32 @tty_port_destroy(%struct.vcc_port* %49)
  %51 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = load %struct.vcc_port*, %struct.vcc_port** %52, align 8
  %54 = call i32 @kfree(%struct.vcc_port* %53)
  %55 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 0
  store %struct.vcc_port* null, %struct.vcc_port** %56, align 8
  br label %57

57:                                               ; preds = %46, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vcc_port* @vcc_get(i32, i32) #1

declare dso_local i32 @vcc_table_remove(i32) #1

declare dso_local i32 @kfree(%struct.vcc_port*) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

declare dso_local i32 @tty_port_destroy(%struct.vcc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
