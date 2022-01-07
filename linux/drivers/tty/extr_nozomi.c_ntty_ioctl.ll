; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.port* }
%struct.port = type { i32, %struct.async_icount }
%struct.async_icount = type { i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"******** IOCTL, cmd: %d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ERR: 0x%08X, %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i64)* @ntty_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntty_ioctl(%struct.tty_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.async_icount, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.port*, %struct.port** %11, align 8
  store %struct.port* %12, %struct.port** %7, align 8
  %13 = load i32, i32* @ENOIOCTLCMD, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, i32, ...) @DBG1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %30 [
    i32 128, label %18
  ]

18:                                               ; preds = %3
  %19 = load %struct.port*, %struct.port** %7, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 1
  %21 = bitcast %struct.async_icount* %9 to i8*
  %22 = bitcast %struct.async_icount* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.port*, %struct.port** %7, align 8
  %24 = getelementptr inbounds %struct.port, %struct.port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.port*, %struct.port** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @ntty_cflags_changed(%struct.port* %26, i64 %27, %struct.async_icount* %9)
  %29 = call i32 @wait_event_interruptible(i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, ...) @DBG1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %18
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @DBG1(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ntty_cflags_changed(%struct.port*, i64, %struct.async_icount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
