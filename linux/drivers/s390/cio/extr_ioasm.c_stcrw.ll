; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ioasm.c_stcrw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ioasm.c_stcrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stcrw(%struct.crw* %0) #0 {
  %2 = alloca %struct.crw*, align 8
  %3 = alloca i32, align 4
  store %struct.crw* %0, %struct.crw** %2, align 8
  %4 = load %struct.crw*, %struct.crw** %2, align 8
  %5 = load %struct.crw*, %struct.crw** %2, align 8
  %6 = call i32 asm sideeffect "\09stcrw\090($2)\0A\09ipm\09$0\0A\09srl\09$0,28\0A", "={dx},=*m,{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(%struct.crw* %4, %struct.crw* %5) #2, !srcloc !2
  store i32 %6, i32* %3, align 4
  %7 = load %struct.crw*, %struct.crw** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @trace_s390_cio_stcrw(%struct.crw* %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local i32 @trace_s390_cio_stcrw(%struct.crw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 274, i32 294, i32 308}
