; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.vcc_port = type { i64, i32, %struct.TYPE_4__, %struct.vio_vcc }
%struct.TYPE_4__ = type { i32 }
%struct.vio_vcc = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"VCC: write: Invalid TTY handle\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VCC: write: Failed to find VCC port\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VIO_TYPE_DATA = common dso_local global i32 0, align 4
@VCC_BUFF_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"TAG [%02x:%02x:%04x:%08x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DATA [%s]\0A\00", align 1
@VIO_TAG_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"VCC: write: ldc_write(%d)=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"VCC: write: total=%d rv=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @vcc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vcc_port*, align 8
  %9 = alloca %struct.vio_vcc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = icmp ne %struct.tty_struct* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %163

26:                                               ; preds = %3
  %27 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.vcc_port* @vcc_get_ne(i32 %29)
  store %struct.vcc_port* %30, %struct.vcc_port** %8, align 8
  %31 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %32 = icmp ne %struct.vcc_port* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %163

41:                                               ; preds = %26
  %42 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %43 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %42, i32 0, i32 1
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %47 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %46, i32 0, i32 3
  store %struct.vio_vcc* %47, %struct.vio_vcc** %9, align 8
  %48 = load i32, i32* @VIO_TYPE_DATA, align 4
  %49 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %50 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %142, %41
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %145

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* @VCC_BUFF_LEN, align 8
  %58 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %59 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %57, %60
  %62 = call i32 @min(i32 %56, i64 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %145

66:                                               ; preds = %55
  %67 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %68 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %71 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @memcpy(i32* %73, i8* %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %83 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %88 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %91 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %95 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %99 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %103 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, i32, ...) @vccdbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %97, i32 %101, i32 %105)
  %107 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %108 = getelementptr inbounds %struct.vio_vcc, %struct.vio_vcc* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = ptrtoint i32* %109 to i32
  %111 = call i32 (i8*, i32, ...) @vccdbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %113 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @vccdbgl(i32 %115)
  %117 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %118 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vio_vcc*, %struct.vio_vcc** %9, align 8
  %122 = load i32, i32* @VIO_TAG_SIZE, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i32 @ldc_write(i32 %120, %struct.vio_vcc* %121, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* @VIO_TAG_SIZE, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %13, align 4
  %130 = call i32 (i8*, i32, ...) @vccdbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %66
  %140 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %141 = call i32 @vcc_kick_tx(%struct.vcc_port* %140)
  br label %145

142:                                              ; preds = %66
  %143 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %144 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  br label %52

145:                                              ; preds = %139, %65, %52
  %146 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %147 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %146, i32 0, i32 1
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.vcc_port*, %struct.vcc_port** %8, align 8
  %151 = call i32 @vcc_put(%struct.vcc_port* %150, i32 0)
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 (i8*, i32, ...) @vccdbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i32, i32* %11, align 4
  br label %161

159:                                              ; preds = %145
  %160 = load i32, i32* %13, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %161, %37, %22
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vcc_port* @vcc_get_ne(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @vccdbg(i8*, i32, ...) #1

declare dso_local i32 @vccdbgl(i32) #1

declare dso_local i32 @ldc_write(i32, %struct.vio_vcc*, i32) #1

declare dso_local i32 @vcc_kick_tx(%struct.vcc_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
