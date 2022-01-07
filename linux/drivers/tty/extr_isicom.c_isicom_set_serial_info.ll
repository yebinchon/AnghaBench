; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.isi_port* }
%struct.isi_port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.serial_struct = type { i32, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"isicom_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ASYNC_USR_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ASYNC_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @isicom_set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isicom_set_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.isi_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  store %struct.isi_port* %11, %struct.isi_port** %6, align 8
  %12 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @isicom_paranoia_check(%struct.isi_port* %12, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %151

21:                                               ; preds = %2
  %22 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %23 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %27 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %33 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %31, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %40 = call i32 @capable(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %99, label %42

42:                                               ; preds = %21
  %43 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %44 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %47 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %42
  %52 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %53 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %56 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %51
  %61 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %62 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ASYNC_USR_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %68 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ASYNC_USR_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %66, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %60, %51, %42
  %76 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %77 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* @EPERM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %151

82:                                               ; preds = %60
  %83 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %84 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ASYNC_USR_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %91 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ASYNC_USR_MASK, align 4
  %94 = and i32 %92, %93
  %95 = or i32 %89, %94
  %96 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %97 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  br label %128

99:                                               ; preds = %21
  %100 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %101 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %104 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  %106 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %107 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %110 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i64 %108, i64* %111, align 8
  %112 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %113 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ASYNC_FLAGS, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %120 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ASYNC_FLAGS, align 4
  %123 = and i32 %121, %122
  %124 = or i32 %118, %123
  %125 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %126 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  br label %128

128:                                              ; preds = %99, %82
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %133 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %139 = call i32 @isicom_config_port(%struct.tty_struct* %138)
  %140 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %141 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  br label %146

146:                                              ; preds = %131, %128
  %147 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %148 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = call i32 @mutex_unlock(i32* %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %146, %75, %18
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @isicom_config_port(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
