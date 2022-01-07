; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_set_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_set_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32 }
%struct.serport = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i32 }

@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@SERDEV_PARITY_NONE = common dso_local global i32 0, align 4
@SERDEV_PARITY_ODD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_controller*, i32)* @ttyport_set_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttyport_set_parity(%struct.serdev_controller* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serdev_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.serport*, align 8
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca %struct.ktermios, align 4
  store %struct.serdev_controller* %0, %struct.serdev_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %10 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %9)
  store %struct.serport* %10, %struct.serport** %6, align 8
  %11 = load %struct.serport*, %struct.serport** %6, align 8
  %12 = getelementptr inbounds %struct.serport, %struct.serport* %11, i32 0, i32 0
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  store %struct.tty_struct* %13, %struct.tty_struct** %7, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = bitcast %struct.ktermios* %8 to i8*
  %17 = bitcast %struct.ktermios* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i32, i32* @PARENB, align 4
  %19 = load i32, i32* @PARODD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CMSPAR, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SERDEV_PARITY_NONE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load i32, i32* @PARENB, align 4
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SERDEV_PARITY_ODD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* @PARODD, align 4
  %40 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %30
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %46 = call i32 @tty_set_termios(%struct.tty_struct* %45, %struct.ktermios* %8)
  %47 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PARENB, align 4
  %52 = load i32, i32* @PARODD, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CMSPAR, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PARENB, align 4
  %60 = load i32, i32* @PARODD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CMSPAR, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %58, %63
  %65 = icmp ne i32 %56, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %44
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %3, align 4
  ret i32 %71
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
