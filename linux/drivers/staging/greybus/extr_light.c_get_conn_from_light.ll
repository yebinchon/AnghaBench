; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_get_conn_from_light.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_get_conn_from_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_light = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_connection* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_connection* (%struct.gb_light*)* @get_conn_from_light to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_connection* @get_conn_from_light(%struct.gb_light* %0) #0 {
  %2 = alloca %struct.gb_light*, align 8
  store %struct.gb_light* %0, %struct.gb_light** %2, align 8
  %3 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %4 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  ret %struct.gb_connection* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
