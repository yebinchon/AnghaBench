; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_early_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_early_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"cis mismatch - different card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @pcmcia_bus_early_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_bus_early_resume(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %5 = call i32 @verify_cis_cache(%struct.pcmcia_socket* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 3
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %13 = call i32 @pcmcia_bus_remove(%struct.pcmcia_socket* %12)
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %18 = call i32 @destroy_cis_cache(%struct.pcmcia_socket* %17)
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %31 = call i32 @pcmcia_bus_add(%struct.pcmcia_socket* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %8, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @verify_cis_cache(%struct.pcmcia_socket*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pcmcia_bus_remove(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @destroy_cis_cache(%struct.pcmcia_socket*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pcmcia_bus_add(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
