; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i64 }
%struct.fc_seq = type { i32 }
%struct.fc4_prov = type { i32, i32 (%struct.fc_lport*, %struct.fc_frame*)* }

@FC_FC4_PROV_SIZE = common dso_local global i64 0, align 8
@fc_passive_prov = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"dropping unexpected frame type %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_lport_recv(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame_header*, align 8
  %6 = alloca %struct.fc_seq*, align 8
  %7 = alloca %struct.fc4_prov*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %8 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %9 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %8)
  store %struct.fc_frame_header* %9, %struct.fc_frame_header** %5, align 8
  %10 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %11 = call %struct.fc_seq* @fr_seq(%struct.fc_frame* %10)
  store %struct.fc_seq* %11, %struct.fc_seq** %6, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %14 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FC_FC4_PROV_SIZE, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %48

19:                                               ; preds = %2
  %20 = load i32*, i32** @fc_passive_prov, align 8
  %21 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %22 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.fc4_prov* @rcu_dereference(i32 %25)
  store %struct.fc4_prov* %26, %struct.fc4_prov** %7, align 8
  %27 = load %struct.fc4_prov*, %struct.fc4_prov** %7, align 8
  %28 = icmp ne %struct.fc4_prov* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.fc4_prov*, %struct.fc4_prov** %7, align 8
  %31 = getelementptr inbounds %struct.fc4_prov, %struct.fc4_prov* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @try_module_get(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %19
  br label %48

36:                                               ; preds = %29
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.fc4_prov*, %struct.fc4_prov** %7, align 8
  %39 = getelementptr inbounds %struct.fc4_prov, %struct.fc4_prov* %38, i32 0, i32 1
  %40 = load i32 (%struct.fc_lport*, %struct.fc_frame*)*, i32 (%struct.fc_lport*, %struct.fc_frame*)** %39, align 8
  %41 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %42 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %43 = call i32 %40(%struct.fc_lport* %41, %struct.fc_frame* %42)
  %44 = load %struct.fc4_prov*, %struct.fc4_prov** %7, align 8
  %45 = getelementptr inbounds %struct.fc4_prov, %struct.fc4_prov* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @module_put(i32 %46)
  br label %62

48:                                               ; preds = %35, %18
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %51 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %52 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %56 = call i32 @fc_frame_free(%struct.fc_frame* %55)
  %57 = load %struct.fc_seq*, %struct.fc_seq** %6, align 8
  %58 = icmp ne %struct.fc_seq* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.fc_seq*, %struct.fc_seq** %6, align 8
  %61 = call i32 @fc_exch_done(%struct.fc_seq* %60)
  br label %62

62:                                               ; preds = %36, %59, %48
  ret void
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.fc_seq* @fr_seq(%struct.fc_frame*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fc4_prov* @rcu_dereference(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i64) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @fc_exch_done(%struct.fc_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
