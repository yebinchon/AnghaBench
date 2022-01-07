; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_inherit_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_inherit_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc_ops = type { i64, i64, i32* }

@n_tty_ops = common dso_local global %struct.tty_ldisc_ops zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @n_tty_inherit_ops(%struct.tty_ldisc_ops* %0) #0 {
  %2 = alloca %struct.tty_ldisc_ops*, align 8
  store %struct.tty_ldisc_ops* %0, %struct.tty_ldisc_ops** %2, align 8
  %3 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %2, align 8
  %4 = bitcast %struct.tty_ldisc_ops* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.tty_ldisc_ops* @n_tty_ops to i8*), i64 24, i1 false)
  %5 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %2, align 8
  %6 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %2, align 8
  %8 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %2, align 8
  %10 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
