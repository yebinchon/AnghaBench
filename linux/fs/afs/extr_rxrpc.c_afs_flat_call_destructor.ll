; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_flat_call_destructor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_flat_call_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_flat_call_destructor(%struct.afs_call* %0) #0 {
  %2 = alloca %struct.afs_call*, align 8
  store %struct.afs_call* %0, %struct.afs_call** %2, align 8
  %3 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %5 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @kfree(i32* %6)
  %8 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %9 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %11 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @kfree(i32* %12)
  %14 = load %struct.afs_call*, %struct.afs_call** %2, align 8
  %15 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
