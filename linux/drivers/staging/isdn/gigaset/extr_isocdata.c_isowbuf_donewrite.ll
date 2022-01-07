; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_isowbuf_donewrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_isowbuf_donewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isowbuf_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isowbuf_t*)* @isowbuf_donewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isowbuf_donewrite(%struct.isowbuf_t* %0) #0 {
  %2 = alloca %struct.isowbuf_t*, align 8
  %3 = alloca i32, align 4
  store %struct.isowbuf_t* %0, %struct.isowbuf_t** %2, align 8
  %4 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %5 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.isowbuf_t*, %struct.isowbuf_t** %2, align 8
  %8 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %7, i32 0, i32 1
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load i32, i32* %3, align 4
  ret i32 %10
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
