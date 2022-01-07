; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vringh.c_vringh_complete_kern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vringh.c_vringh_complete_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vringh = type { i32 }
%struct.vring_used_elem = type { i8*, i8* }

@putu16_kern = common dso_local global i32 0, align 4
@putused_kern = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vringh_complete_kern(%struct.vringh* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vringh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vring_used_elem, align 8
  store %struct.vringh* %0, %struct.vringh** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vringh*, %struct.vringh** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i8* @cpu_to_vringh32(%struct.vringh* %8, i32 %9)
  %11 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %7, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load %struct.vringh*, %struct.vringh** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @cpu_to_vringh32(%struct.vringh* %12, i32 %13)
  %15 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %7, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load %struct.vringh*, %struct.vringh** %4, align 8
  %17 = load i32, i32* @putu16_kern, align 4
  %18 = load i32, i32* @putused_kern, align 4
  %19 = call i32 @__vringh_complete(%struct.vringh* %16, %struct.vring_used_elem* %7, i32 1, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i8* @cpu_to_vringh32(%struct.vringh*, i32) #1

declare dso_local i32 @__vringh_complete(%struct.vringh*, %struct.vring_used_elem*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
