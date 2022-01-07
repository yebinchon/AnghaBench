; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_new_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_new_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_connection = type { i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.net_device*, i32, i32, i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NETIUCV_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"netiucvconn\00", align 1
@conn_state_names = common dso_local global i32 0, align 4
@conn_event_names = common dso_local global i32 0, align 4
@NR_CONN_STATES = common dso_local global i32 0, align 4
@NR_CONN_EVENTS = common dso_local global i32 0, align 4
@conn_fsm = common dso_local global i32 0, align 4
@CONN_FSM_LEN = common dso_local global i32 0, align 4
@CONN_STATE_INVALID = common dso_local global i32 0, align 4
@CONN_STATE_STOPPED = common dso_local global i32 0, align 4
@iucv_connection_rwlock = common dso_local global i32 0, align 4
@iucv_connection_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iucv_connection* (%struct.net_device*, i8*, i8*)* @netiucv_new_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iucv_connection* @netiucv_new_connection(%struct.net_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.iucv_connection*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iucv_connection*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.iucv_connection* @kzalloc(i32 64, i32 %9)
  store %struct.iucv_connection* %10, %struct.iucv_connection** %8, align 8
  %11 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %12 = icmp ne %struct.iucv_connection* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %129

14:                                               ; preds = %3
  %15 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %16 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %15, i32 0, i32 11
  %17 = call i32 @skb_queue_head_init(i32* %16)
  %18 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %19 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %18, i32 0, i32 10
  %20 = call i32 @skb_queue_head_init(i32* %19)
  %21 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %22 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %21, i32 0, i32 9
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load i32, i32* @NETIUCV_BUFSIZE_DEFAULT, align 4
  %25 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %26 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %29 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %28, i32 0, i32 8
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %31 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* @GFP_DMA, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @alloc_skb(i32 %32, i32 %35)
  %37 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %38 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %40 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %14
  br label %126

44:                                               ; preds = %14
  %45 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %46 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load i32, i32* @GFP_DMA, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @alloc_skb(i32 %47, i32 %50)
  %52 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %53 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %55 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %121

59:                                               ; preds = %44
  %60 = load i32, i32* @conn_state_names, align 4
  %61 = load i32, i32* @conn_event_names, align 4
  %62 = load i32, i32* @NR_CONN_STATES, align 4
  %63 = load i32, i32* @NR_CONN_EVENTS, align 4
  %64 = load i32, i32* @conn_fsm, align 4
  %65 = load i32, i32* @CONN_FSM_LEN, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @init_fsm(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %69 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %71 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %59
  br label %116

75:                                               ; preds = %59
  %76 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %77 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %80 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %79, i32 0, i32 6
  %81 = call i32 @fsm_settimer(i32 %78, i32* %80)
  %82 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %83 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CONN_STATE_INVALID, align 4
  %86 = call i32 @fsm_newstate(i32 %84, i32 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %75
  %90 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %91 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @memcpy(i32 %92, i8* %93, i32 17)
  br label %95

95:                                               ; preds = %89, %75
  %96 = load i8*, i8** %6, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %100 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @memcpy(i32 %101, i8* %102, i32 9)
  %104 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %105 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CONN_STATE_STOPPED, align 4
  %108 = call i32 @fsm_newstate(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %98, %95
  %110 = call i32 @write_lock_bh(i32* @iucv_connection_rwlock)
  %111 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %112 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %111, i32 0, i32 2
  %113 = call i32 @list_add_tail(i32* %112, i32* @iucv_connection_list)
  %114 = call i32 @write_unlock_bh(i32* @iucv_connection_rwlock)
  %115 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  store %struct.iucv_connection* %115, %struct.iucv_connection** %4, align 8
  br label %130

116:                                              ; preds = %74
  %117 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %118 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @kfree_skb(i8* %119)
  br label %121

121:                                              ; preds = %116, %58
  %122 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %123 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @kfree_skb(i8* %124)
  br label %126

126:                                              ; preds = %121, %43
  %127 = load %struct.iucv_connection*, %struct.iucv_connection** %8, align 8
  %128 = call i32 @kfree(%struct.iucv_connection* %127)
  br label %129

129:                                              ; preds = %126, %13
  store %struct.iucv_connection* null, %struct.iucv_connection** %4, align 8
  br label %130

130:                                              ; preds = %129, %109
  %131 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  ret %struct.iucv_connection* %131
}

declare dso_local %struct.iucv_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @alloc_skb(i32, i32) #1

declare dso_local i32 @init_fsm(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsm_settimer(i32, i32*) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(i8*) #1

declare dso_local i32 @kfree(%struct.iucv_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
