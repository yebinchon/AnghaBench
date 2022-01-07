; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.tty_struct = type { i64, %struct.tty_port* }
%struct.tty_port = type { i32* }
%struct.vcc_port = type { %struct.tty_struct* }

@.str = private unnamed_addr constant [34 x i8] c"VCC: install: Invalid TTY handle\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VCC_MAX_PORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"VCC: install: Failed to find VCC port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@vcc_port_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @vcc_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.vcc_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = icmp ne %struct.tty_struct* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VCC_MAX_PORTS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %72

28:                                               ; preds = %19
  %29 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %31 = call i32 @tty_standard_install(%struct.tty_driver* %29, %struct.tty_struct* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %72

36:                                               ; preds = %28
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.tty_port* @kzalloc(i32 8, i32 %37)
  store %struct.tty_port* %38, %struct.tty_port** %7, align 8
  %39 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %40 = icmp ne %struct.tty_port* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %72

44:                                               ; preds = %36
  %45 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.vcc_port* @vcc_get(i64 %47, i32 1)
  store %struct.vcc_port* %48, %struct.vcc_port** %6, align 8
  %49 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %50 = icmp ne %struct.vcc_port* %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 1
  store %struct.tty_port* null, %struct.tty_port** %54, align 8
  %55 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %56 = call i32 @kfree(%struct.tty_port* %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %44
  %60 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %61 = call i32 @tty_port_init(%struct.tty_port* %60)
  %62 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %63 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %62, i32 0, i32 0
  store i32* @vcc_port_ops, i32** %63, align 8
  %64 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %65 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 1
  store %struct.tty_port* %64, %struct.tty_port** %66, align 8
  %67 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %68 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %69 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %68, i32 0, i32 0
  store %struct.tty_struct* %67, %struct.tty_struct** %69, align 8
  %70 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %71 = call i32 @vcc_put(%struct.vcc_port* %70, i32 1)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %59, %51, %41, %34, %25, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local %struct.tty_port* @kzalloc(i32, i32) #1

declare dso_local %struct.vcc_port* @vcc_get(i64, i32) #1

declare dso_local i32 @kfree(%struct.tty_port*) #1

declare dso_local i32 @tty_port_init(%struct.tty_port*) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
