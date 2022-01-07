; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ioasm.c___hsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_ioasm.c___hsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__hsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hsch(i32 %0) #0 {
  %2 = alloca %struct.subchannel_id, align 4
  %3 = alloca %struct.subchannel_id, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %2, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = bitcast %struct.subchannel_id* %3 to i8*
  %7 = bitcast %struct.subchannel_id* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 4, i1 false)
  %8 = bitcast %struct.subchannel_id* %3 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = call i32 asm sideeffect "\09hsch\0A\09ipm\09$0\0A\09srl\09$0,28", "={dx},{dx},~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %9) #2, !srcloc !2
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  ret i32 %11
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 340, i32 353, i32 367}
