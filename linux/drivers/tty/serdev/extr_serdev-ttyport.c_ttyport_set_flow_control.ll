; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_set_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_set_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32 }
%struct.serport = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serdev_controller*, i32)* @ttyport_set_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyport_set_flow_control(%struct.serdev_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.serdev_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.serport*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.ktermios, align 4
  store %struct.serdev_controller* %0, %struct.serdev_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %9 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %8)
  store %struct.serport* %9, %struct.serport** %5, align 8
  %10 = load %struct.serport*, %struct.serport** %5, align 8
  %11 = getelementptr inbounds %struct.serport, %struct.serport* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = bitcast %struct.ktermios* %7 to i8*
  %16 = bitcast %struct.ktermios* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @CRTSCTS, align 4
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @CRTSCTS, align 4
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %32 = call i32 @tty_set_termios(%struct.tty_struct* %31, %struct.ktermios* %7)
  ret void
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_termios(%struct.tty_struct*, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
