; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_discover_arenas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_discover_arenas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btt = type { i64, i32, i32, i8*, i32, i32 }
%struct.arena_info = type { i64, i64, i64, i64, i32, i8* }
%struct.btt_sb = type { i64, i64, i64, i64, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INIT_NOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No existing arenas\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Found corrupted metadata!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to deduce log/padding indices\0A\00", align 1
@INIT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btt*)* @discover_arenas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discover_arenas(%struct.btt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arena_info*, align 8
  %6 = alloca %struct.btt_sb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.btt* %0, %struct.btt** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.btt*, %struct.btt** %3, align 8
  %12 = getelementptr inbounds %struct.btt, %struct.btt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.btt_sb* @kzalloc(i32 48, i32 %14)
  store %struct.btt_sb* %15, %struct.btt_sb** %6, align 8
  %16 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %17 = icmp ne %struct.btt_sb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %165

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %141, %21
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %142

25:                                               ; preds = %22
  %26 = load %struct.btt*, %struct.btt** %3, align 8
  %27 = call %struct.btt_sb* @alloc_arena(%struct.btt* %26, i32 0, i32 0, i32 0)
  %28 = bitcast %struct.btt_sb* %27 to %struct.arena_info*
  store %struct.arena_info* %28, %struct.arena_info** %5, align 8
  %29 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %30 = icmp ne %struct.arena_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %161

34:                                               ; preds = %25
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %37 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %39 = bitcast %struct.arena_info* %38 to %struct.btt_sb*
  %40 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %41 = call i32 @btt_info_read(%struct.btt_sb* %39, %struct.btt_sb* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %155

45:                                               ; preds = %34
  %46 = load %struct.btt*, %struct.btt** %3, align 8
  %47 = getelementptr inbounds %struct.btt, %struct.btt* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %50 = call i32 @nd_btt_arena_is_valid(i32 %48, %struct.btt_sb* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.btt*, %struct.btt** %3, align 8
  %55 = getelementptr inbounds %struct.btt, %struct.btt* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* @INIT_NOTFOUND, align 4
  %60 = load %struct.btt*, %struct.btt** %3, align 8
  %61 = getelementptr inbounds %struct.btt, %struct.btt* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %63 = bitcast %struct.arena_info* %62 to %struct.btt_sb*
  %64 = call i32 @to_dev(%struct.btt_sb* %63)
  %65 = call i32 @dev_info(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %155

66:                                               ; preds = %52
  %67 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %68 = bitcast %struct.arena_info* %67 to %struct.btt_sb*
  %69 = call i32 @to_dev(%struct.btt_sb* %68)
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %155

73:                                               ; preds = %45
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %76 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %78 = bitcast %struct.arena_info* %77 to %struct.btt_sb*
  %79 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @parse_arena_meta(%struct.btt_sb* %78, %struct.btt_sb* %79, i64 %80)
  %82 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %83 = bitcast %struct.arena_info* %82 to %struct.btt_sb*
  %84 = call i32 @log_set_indices(%struct.btt_sb* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %89 = bitcast %struct.arena_info* %88 to %struct.btt_sb*
  %90 = call i32 @to_dev(%struct.btt_sb* %89)
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %155

92:                                               ; preds = %73
  %93 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %94 = bitcast %struct.arena_info* %93 to %struct.btt_sb*
  %95 = call i32 @btt_freelist_init(%struct.btt_sb* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %155

99:                                               ; preds = %92
  %100 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %101 = bitcast %struct.arena_info* %100 to %struct.btt_sb*
  %102 = call i32 @btt_rtt_init(%struct.btt_sb* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %155

106:                                              ; preds = %99
  %107 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %108 = bitcast %struct.arena_info* %107 to %struct.btt_sb*
  %109 = call i32 @btt_maplocks_init(%struct.btt_sb* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %155

113:                                              ; preds = %106
  %114 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %115 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %114, i32 0, i32 4
  %116 = load %struct.btt*, %struct.btt** %3, align 8
  %117 = getelementptr inbounds %struct.btt, %struct.btt* %116, i32 0, i32 4
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  %119 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %120 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %7, align 8
  %124 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %125 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %9, align 8
  %129 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %130 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr i8, i8* %132, i64 %131
  store i8* %133, i8** %8, align 8
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %137 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %113
  br label %142

141:                                              ; preds = %113
  br label %22

142:                                              ; preds = %140, %22
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.btt*, %struct.btt** %3, align 8
  %145 = getelementptr inbounds %struct.btt, %struct.btt* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.btt*, %struct.btt** %3, align 8
  %148 = getelementptr inbounds %struct.btt, %struct.btt* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @INIT_READY, align 4
  %150 = load %struct.btt*, %struct.btt** %3, align 8
  %151 = getelementptr inbounds %struct.btt, %struct.btt* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %153 = call i32 @kfree(%struct.btt_sb* %152)
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %165

155:                                              ; preds = %112, %105, %98, %87, %66, %58, %44
  %156 = load %struct.arena_info*, %struct.arena_info** %5, align 8
  %157 = bitcast %struct.arena_info* %156 to %struct.btt_sb*
  %158 = call i32 @kfree(%struct.btt_sb* %157)
  %159 = load %struct.btt*, %struct.btt** %3, align 8
  %160 = call i32 @free_arenas(%struct.btt* %159)
  br label %161

161:                                              ; preds = %155, %31
  %162 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %163 = call i32 @kfree(%struct.btt_sb* %162)
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %142, %18
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.btt_sb* @kzalloc(i32, i32) #1

declare dso_local %struct.btt_sb* @alloc_arena(%struct.btt*, i32, i32, i32) #1

declare dso_local i32 @btt_info_read(%struct.btt_sb*, %struct.btt_sb*) #1

declare dso_local i32 @nd_btt_arena_is_valid(i32, %struct.btt_sb*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @to_dev(%struct.btt_sb*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @parse_arena_meta(%struct.btt_sb*, %struct.btt_sb*, i64) #1

declare dso_local i32 @log_set_indices(%struct.btt_sb*) #1

declare dso_local i32 @btt_freelist_init(%struct.btt_sb*) #1

declare dso_local i32 @btt_rtt_init(%struct.btt_sb*) #1

declare dso_local i32 @btt_maplocks_init(%struct.btt_sb*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.btt_sb*) #1

declare dso_local i32 @free_arenas(%struct.btt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
