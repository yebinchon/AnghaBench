; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c___cifs_readv_discard.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c___cifs_readv_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32* }
%struct.mid_q_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.mid_q_entry*, i32)* @__cifs_readv_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cifs_readv_discard(%struct.TCP_Server_Info* %0, %struct.mid_q_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.mid_q_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.mid_q_entry* %1, %struct.mid_q_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %9 = call i32 @cifs_discard_remaining_data(%struct.TCP_Server_Info* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @dequeue_mid(%struct.mid_q_entry* %10, i32 %11)
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.mid_q_entry*, %struct.mid_q_entry** %5, align 8
  %17 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %7, align 4
  ret i32 %20
}

declare dso_local i32 @cifs_discard_remaining_data(%struct.TCP_Server_Info*) #1

declare dso_local i32 @dequeue_mid(%struct.mid_q_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
