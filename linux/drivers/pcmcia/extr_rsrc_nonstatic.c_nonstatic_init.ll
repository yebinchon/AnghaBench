; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i8* }
%struct.socket_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @nonstatic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonstatic_init(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.socket_data*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.socket_data* @kzalloc(i32 24, i32 %5)
  store %struct.socket_data* %6, %struct.socket_data** %4, align 8
  %7 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %8 = icmp ne %struct.socket_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %14 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %13, i32 0, i32 2
  %15 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %16 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %19 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %18, i32 0, i32 1
  %20 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %21 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %24 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %23, i32 0, i32 0
  %25 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %26 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %27, align 8
  %28 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %29 = bitcast %struct.socket_data* %28 to i8*
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %33 = call i32 @nonstatic_autoadd_resources(%struct.pcmcia_socket* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %12, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.socket_data* @kzalloc(i32, i32) #1

declare dso_local i32 @nonstatic_autoadd_resources(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
