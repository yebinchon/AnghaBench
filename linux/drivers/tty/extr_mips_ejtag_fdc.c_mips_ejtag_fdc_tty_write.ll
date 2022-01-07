; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_tty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.mips_ejtag_fdc_tty_port* }
%struct.mips_ejtag_fdc_tty_port = type { i32, i64, i32, i32, %struct.TYPE_2__, %struct.mips_ejtag_fdc_tty* }
%struct.TYPE_2__ = type { i64 }
%struct.mips_ejtag_fdc_tty = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @mips_ejtag_fdc_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_ejtag_fdc_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mips_ejtag_fdc_tty_port*, align 8
  %10 = alloca %struct.mips_ejtag_fdc_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %12, align 8
  store %struct.mips_ejtag_fdc_tty_port* %13, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %14 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %15 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %14, i32 0, i32 5
  %16 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %15, align 8
  store %struct.mips_ejtag_fdc_tty* %16, %struct.mips_ejtag_fdc_tty** %10, align 8
  %17 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %18 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %10, align 8
  %22 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %25 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %23, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @min(i32 %20, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %10, align 8
  %33 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %32, i32 0, i32 2
  %34 = call i32 @atomic_add(i32 %31, i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %37 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %92, %3
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %10, align 8
  %47 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %50 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @min(i32 %45, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %56 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %60 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @memcpy(i64 %62, i8* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %69 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %73 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %10, align 8
  %76 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %44
  %80 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %10, align 8
  %81 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %84 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %79, %44
  %88 = load i32, i32* %8, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %5, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %41

96:                                               ; preds = %41
  %97 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %98 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %104 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %103, i32 0, i32 3
  %105 = call i32 @reinit_completion(i32* %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %9, align 8
  %108 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %107, i32 0, i32 2
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %10, align 8
  %114 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %113, i32 0, i32 1
  %115 = call i32 @wake_up_interruptible(i32* %114)
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
