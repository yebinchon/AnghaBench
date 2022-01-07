; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_daisy.c_clone_parport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_daisy.c_clone_parport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32, %struct.parport**, %struct.parport*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.parport* (%struct.parport*, i32)* @clone_parport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.parport* @clone_parport(%struct.parport* %0, i32 %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.parport*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = getelementptr inbounds %struct.parport, %struct.parport* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.parport*, %struct.parport** %3, align 8
  %10 = getelementptr inbounds %struct.parport, %struct.parport* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.parport*, %struct.parport** %3, align 8
  %13 = getelementptr inbounds %struct.parport, %struct.parport* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.parport*, %struct.parport** %3, align 8
  %16 = getelementptr inbounds %struct.parport, %struct.parport* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.parport* @parport_register_port(i32 %8, i32 %11, i32 %14, i32 %17)
  store %struct.parport* %18, %struct.parport** %5, align 8
  %19 = load %struct.parport*, %struct.parport** %5, align 8
  %20 = icmp ne %struct.parport* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load %struct.parport*, %struct.parport** %3, align 8
  %23 = getelementptr inbounds %struct.parport, %struct.parport* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.parport*, %struct.parport** %5, align 8
  %26 = getelementptr inbounds %struct.parport, %struct.parport* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.parport*, %struct.parport** %3, align 8
  %28 = load %struct.parport*, %struct.parport** %5, align 8
  %29 = getelementptr inbounds %struct.parport, %struct.parport* %28, i32 0, i32 2
  store %struct.parport* %27, %struct.parport** %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.parport*, %struct.parport** %5, align 8
  %32 = getelementptr inbounds %struct.parport, %struct.parport* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.parport*, %struct.parport** %5, align 8
  %34 = load %struct.parport*, %struct.parport** %3, align 8
  %35 = getelementptr inbounds %struct.parport, %struct.parport* %34, i32 0, i32 1
  %36 = load %struct.parport**, %struct.parport*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.parport*, %struct.parport** %36, i64 %39
  store %struct.parport* %33, %struct.parport** %40, align 8
  br label %41

41:                                               ; preds = %21, %2
  %42 = load %struct.parport*, %struct.parport** %5, align 8
  ret %struct.parport* %42
}

declare dso_local %struct.parport* @parport_register_port(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
