; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.vcc_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"VCC: open: Invalid TTY handle\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VCC: open: Failed to find VCC port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"VCC: open: LDC channel not configured\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"VCC: open: TTY port not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"VCC: open: TTY ops not defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @vcc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vcc_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = icmp ne %struct.tty_struct* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %98

25:                                               ; preds = %17
  %26 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.vcc_port* @vcc_get_ne(i32 %28)
  store %struct.vcc_port* %29, %struct.vcc_port** %6, align 8
  %30 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %31 = icmp ne %struct.vcc_port* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %98

40:                                               ; preds = %25
  %41 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %42 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %53 = call i32 @vcc_put(%struct.vcc_port* %52, i32 0)
  %54 = load i32, i32* @EPIPE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %40
  %57 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %58 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vccdbgl(i32 %60)
  %62 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %63 = call i32 @vcc_put(%struct.vcc_port* %62, i32 0)
  %64 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %98

76:                                               ; preds = %56
  %77 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %78 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %98

91:                                               ; preds = %76
  %92 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %93 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = call i32 @tty_port_open(%struct.TYPE_4__* %94, %struct.tty_struct* %95, %struct.file* %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %91, %87, %72, %50, %36, %22, %13
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vcc_port* @vcc_get_ne(i32) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

declare dso_local i32 @vccdbgl(i32) #1

declare dso_local i32 @tty_port_open(%struct.TYPE_4__*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
