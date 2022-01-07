; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_exca_writew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_exca_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%04x %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*, i32, i32)* @exca_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exca_writew(%struct.yenta_socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.yenta_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.yenta_socket*, %struct.yenta_socket** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.yenta_socket* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.yenta_socket*, %struct.yenta_socket** %4, align 8
  %13 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %14, 2048
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %15, %16
  %18 = call i32 @writeb(i32 %11, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 8
  %21 = load %struct.yenta_socket*, %struct.yenta_socket** %4, align 8
  %22 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, 2048
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %24, %25
  %27 = add i32 %26, 1
  %28 = call i32 @writeb(i32 %20, i32 %27)
  %29 = load %struct.yenta_socket*, %struct.yenta_socket** %4, align 8
  %30 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, 2048
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %32, %33
  %35 = call i32 @readb(i32 %34)
  %36 = load %struct.yenta_socket*, %struct.yenta_socket** %4, align 8
  %37 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 2048
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %39, %40
  %42 = add i32 %41, 1
  %43 = call i32 @readb(i32 %42)
  ret void
}

declare dso_local i32 @debug(i8*, %struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
