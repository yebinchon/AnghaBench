; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_tport_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_sess.c_ft_tport_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_tport = type { i32*, %struct.ft_tpg*, %struct.fc_lport* }
%struct.ft_tpg = type { %struct.ft_tport* }
%struct.fc_lport = type { i32* }

@FC_TYPE_FCP = common dso_local global i64 0, align 8
@ft_lport_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FT_SESS_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ft_tport* (%struct.fc_lport*)* @ft_tport_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ft_tport* @ft_tport_get(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.ft_tport*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.ft_tpg*, align 8
  %5 = alloca %struct.ft_tport*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @FC_TYPE_FCP, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @lockdep_is_held(i32* @ft_lport_lock)
  %14 = call %struct.ft_tport* @rcu_dereference_protected(i32 %12, i32 %13)
  store %struct.ft_tport* %14, %struct.ft_tport** %5, align 8
  %15 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %16 = icmp ne %struct.ft_tport* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %19 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %18, i32 0, i32 1
  %20 = load %struct.ft_tpg*, %struct.ft_tpg** %19, align 8
  %21 = icmp ne %struct.ft_tpg* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  store %struct.ft_tport* %23, %struct.ft_tport** %2, align 8
  br label %82

24:                                               ; preds = %17, %1
  %25 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %26 = call %struct.ft_tpg* @ft_lport_find_tpg(%struct.fc_lport* %25)
  store %struct.ft_tpg* %26, %struct.ft_tpg** %4, align 8
  %27 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %28 = icmp ne %struct.ft_tpg* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.ft_tport* null, %struct.ft_tport** %2, align 8
  br label %82

30:                                               ; preds = %24
  %31 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %32 = icmp ne %struct.ft_tport* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %35 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %36 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %35, i32 0, i32 1
  store %struct.ft_tpg* %34, %struct.ft_tpg** %36, align 8
  %37 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %38 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %39 = getelementptr inbounds %struct.ft_tpg, %struct.ft_tpg* %38, i32 0, i32 0
  store %struct.ft_tport* %37, %struct.ft_tport** %39, align 8
  %40 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  store %struct.ft_tport* %40, %struct.ft_tport** %2, align 8
  br label %82

41:                                               ; preds = %30
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.ft_tport* @kzalloc(i32 24, i32 %42)
  store %struct.ft_tport* %43, %struct.ft_tport** %5, align 8
  %44 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %45 = icmp ne %struct.ft_tport* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.ft_tport* null, %struct.ft_tport** %2, align 8
  br label %82

47:                                               ; preds = %41
  %48 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %49 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %50 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %49, i32 0, i32 2
  store %struct.fc_lport* %48, %struct.fc_lport** %50, align 8
  %51 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %52 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %53 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %52, i32 0, i32 1
  store %struct.ft_tpg* %51, %struct.ft_tpg** %53, align 8
  %54 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %55 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %56 = getelementptr inbounds %struct.ft_tpg, %struct.ft_tpg* %55, i32 0, i32 0
  store %struct.ft_tport* %54, %struct.ft_tport** %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %69, %47
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @FT_SESS_HASH_SIZE, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %63 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @INIT_HLIST_HEAD(i32* %67)
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %57

72:                                               ; preds = %57
  %73 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %74 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @FC_TYPE_FCP, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %80 = call i32 @rcu_assign_pointer(i32 %78, %struct.ft_tport* %79)
  %81 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  store %struct.ft_tport* %81, %struct.ft_tport** %2, align 8
  br label %82

82:                                               ; preds = %72, %46, %33, %29, %22
  %83 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  ret %struct.ft_tport* %83
}

declare dso_local %struct.ft_tport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.ft_tpg* @ft_lport_find_tpg(%struct.fc_lport*) #1

declare dso_local %struct.ft_tport* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ft_tport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
