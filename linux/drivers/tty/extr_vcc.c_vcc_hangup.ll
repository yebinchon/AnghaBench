; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32 }
%struct.vcc_port = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"VCC: hangup: Invalid TTY handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"VCC: hangup: Failed to find VCC port\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"VCC: hangup: TTY port not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @vcc_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_hangup(%struct.tty_struct* %0) #0 {
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
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vcc_port* @vcc_get_ne(i32 %15)
  store %struct.vcc_port* %16, %struct.vcc_port** %3, align 8
  %17 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %18 = icmp ne %struct.vcc_port* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %47

25:                                               ; preds = %12
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %37 = call i32 @vcc_put(%struct.vcc_port* %36, i32 0)
  br label %47

38:                                               ; preds = %25
  %39 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %40 = call i32 @vcc_ldc_hup(%struct.vcc_port* %39)
  %41 = load %struct.vcc_port*, %struct.vcc_port** %3, align 8
  %42 = call i32 @vcc_put(%struct.vcc_port* %41, i32 0)
  %43 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tty_port_hangup(i32 %45)
  br label %47

47:                                               ; preds = %38, %34, %23, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vcc_port* @vcc_get_ne(i32) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

declare dso_local i32 @vcc_ldc_hup(%struct.vcc_port*) #1

declare dso_local i32 @tty_port_hangup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
