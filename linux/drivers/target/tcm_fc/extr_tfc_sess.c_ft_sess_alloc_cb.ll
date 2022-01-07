; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_sess_alloc_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_sess_alloc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_session = type { i32 }
%struct.ft_sess = type { i32, i32, %struct.ft_tport* }
%struct.ft_tport = type { i32, i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"port_id %x sess %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_portal_group*, %struct.se_session*, i8*)* @ft_sess_alloc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_sess_alloc_cb(%struct.se_portal_group* %0, %struct.se_session* %1, i8* %2) #0 {
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ft_sess*, align 8
  %8 = alloca %struct.ft_tport*, align 8
  %9 = alloca %struct.hlist_head*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store %struct.se_session* %1, %struct.se_session** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ft_sess*
  store %struct.ft_sess* %11, %struct.ft_sess** %7, align 8
  %12 = load %struct.ft_sess*, %struct.ft_sess** %7, align 8
  %13 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %12, i32 0, i32 2
  %14 = load %struct.ft_tport*, %struct.ft_tport** %13, align 8
  store %struct.ft_tport* %14, %struct.ft_tport** %8, align 8
  %15 = load %struct.ft_tport*, %struct.ft_tport** %8, align 8
  %16 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %15, i32 0, i32 2
  %17 = load %struct.hlist_head*, %struct.hlist_head** %16, align 8
  %18 = load %struct.ft_sess*, %struct.ft_sess** %7, align 8
  %19 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ft_sess_hash(i32 %20)
  %22 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %17, i64 %21
  store %struct.hlist_head* %22, %struct.hlist_head** %9, align 8
  %23 = load %struct.ft_tport*, %struct.ft_tport** %8, align 8
  %24 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ft_sess*, %struct.ft_sess** %7, align 8
  %27 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ft_sess*, %struct.ft_sess** %7, align 8
  %30 = call i32 @TFC_SESS_DBG(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.ft_sess* %29)
  %31 = load %struct.ft_sess*, %struct.ft_sess** %7, align 8
  %32 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %31, i32 0, i32 0
  %33 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %34 = call i32 @hlist_add_head_rcu(i32* %32, %struct.hlist_head* %33)
  %35 = load %struct.ft_tport*, %struct.ft_tport** %8, align 8
  %36 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  ret i32 0
}

declare dso_local i64 @ft_sess_hash(i32) #1

declare dso_local i32 @TFC_SESS_DBG(i32, i8*, i32, %struct.ft_sess*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
