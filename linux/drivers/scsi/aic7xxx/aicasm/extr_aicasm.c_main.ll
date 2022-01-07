; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32* }

@patches = common dso_local global i32 0, align 4
@search_path = common dso_local global i32 0, align 4
@seq_program = common dso_local global i32 0, align 4
@cs_tailq = common dso_local global i32 0, align 4
@scope_stack = common dso_local global i32 0, align 4
@SCOPE_ROOT = common dso_local global i64 0, align 8
@includes_search_curdir = common dso_local global i32 0, align 4
@appname = common dso_local global i8* null, align 8
@regfile = common dso_local global i32* null, align 8
@listfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"d:i:l:n:o:p:r:I:\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"-d: Assembler not built with debugging information\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@optarg = external dso_local global i8*, align 8
@stock_include_file = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EX_CANTCREAT = common dso_local global i32 0, align 4
@listfilename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"ostdinc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: Unknown option -%c%s\0A\00", align 1
@ofile = common dso_local global i32* null, align 8
@ofilename = common dso_local global i8* null, align 8
@regdiagfile = common dso_local global i32* null, align 8
@regdiagfilename = common dso_local global i8* null, align 8
@regfilename = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: Warning - '-I-' specified multiple times\0A\00", align 1
@links = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@optind = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: No input file specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"%s: The -p option requires the -r and -i options.\0A\00", align 1
@SOURCE_FILE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Unterminated conditional expression\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@mm_flex_debug = common dso_local global i32 0, align 4
@mmdebug = common dso_local global i32 0, align 4
@yy_flex_debug = common dso_local global i32 0, align 4
@yydebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 @STAILQ_INIT(i32* @patches)
  %12 = call i32 @SLIST_INIT(i32* @search_path)
  %13 = call i32 @STAILQ_INIT(i32* @seq_program)
  %14 = call i32 @TAILQ_INIT(i32* @cs_tailq)
  %15 = call i32 @SLIST_INIT(i32* @scope_stack)
  %16 = call %struct.TYPE_10__* (...) @scope_alloc()
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %9, align 8
  %17 = load i64, i64* @SCOPE_ROOT, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  store i32 1, i32* @includes_search_curdir, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @appname, align 8
  store i32* null, i32** @regfile, align 8
  store i32* null, i32** @listfile, align 8
  br label %22

22:                                               ; preds = %153, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %154

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %151 [
    i32 100, label %29
    i32 105, label %32
    i32 108, label %34
    i32 110, label %46
    i32 111, label %58
    i32 112, label %70
    i32 114, label %82
    i32 73, label %94
    i32 63, label %150
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @EX_SOFTWARE, align 4
  %31 = call i32 @stop(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %153

32:                                               ; preds = %27
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @stock_include_file, align 8
  br label %153

34:                                               ; preds = %27
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i8* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** @listfile, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @perror(i8* %40)
  %42 = load i32, i32* @EX_CANTCREAT, align 4
  %43 = call i32 @stop(i8* null, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @listfilename, align 8
  br label %153

46:                                               ; preds = %27
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @appname, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %52, i32 %53, i8* %54)
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %50, %46
  br label %153

58:                                               ; preds = %27
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i8* @fopen(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** @ofile, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i32 @perror(i8* %64)
  %66 = load i32, i32* @EX_CANTCREAT, align 4
  %67 = call i32 @stop(i8* null, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** @optarg, align 8
  store i8* %69, i8** @ofilename, align 8
  br label %153

70:                                               ; preds = %27
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i8* @fopen(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** @regdiagfile, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i32 @perror(i8* %76)
  %78 = load i32, i32* @EX_CANTCREAT, align 4
  %79 = call i32 @stop(i8* null, i32 %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i8*, i8** @optarg, align 8
  store i8* %81, i8** @regdiagfilename, align 8
  br label %153

82:                                               ; preds = %27
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i8* @fopen(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %85 = bitcast i8* %84 to i32*
  store i32* %85, i32** @regfile, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** @optarg, align 8
  %89 = call i32 @perror(i8* %88)
  %90 = load i32, i32* @EX_CANTCREAT, align 4
  %91 = call i32 @stop(i8* null, i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i8*, i8** @optarg, align 8
  store i8* %93, i8** @regfilename, align 8
  br label %153

94:                                               ; preds = %27
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load i32, i32* @includes_search_curdir, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** @appname, align 8
  %104 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %101, %98
  store i32 0, i32* @includes_search_curdir, align 4
  %106 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @search_path)
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %10, align 8
  br label %107

107:                                              ; preds = %113, %105
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = icmp ne %struct.TYPE_11__* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = load i32, i32* @links, align 4
  %116 = call %struct.TYPE_11__* @SLIST_NEXT(%struct.TYPE_11__* %114, i32 %115)
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %10, align 8
  br label %107

117:                                              ; preds = %107
  br label %149

118:                                              ; preds = %94
  %119 = call i32 @malloc(i32 24)
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %121, %struct.TYPE_11__** %10, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = icmp eq %struct.TYPE_11__* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load i8*, i8** @optarg, align 8
  %126 = call i32 @perror(i8* %125)
  %127 = load i32, i32* @EX_OSERR, align 4
  %128 = call i32 @stop(i8* null, i32 %127)
  br label %129

129:                                              ; preds = %124, %118
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i32* @strdup(i8* %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load i8*, i8** @optarg, align 8
  %140 = call i32 @perror(i8* %139)
  %141 = load i32, i32* @EX_OSERR, align 4
  %142 = call i32 @stop(i8* null, i32 %141)
  br label %143

143:                                              ; preds = %138, %129
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = load i32, i32* @links, align 4
  %148 = call i32 @SLIST_INSERT_HEAD(i32* @search_path, %struct.TYPE_11__* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %117
  br label %153

150:                                              ; preds = %27
  br label %151

151:                                              ; preds = %27, %150
  %152 = call i32 (...) @usage()
  br label %153

153:                                              ; preds = %151, %149, %92, %80, %68, %57, %44, %32, %29
  br label %22

154:                                              ; preds = %22
  %155 = load i32, i32* @optind, align 4
  %156 = load i32, i32* %4, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* @optind, align 4
  %159 = load i8**, i8*** %5, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8*, i8** %159, i64 %160
  store i8** %161, i8*** %5, align 8
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i32, i32* @stderr, align 4
  %166 = load i8*, i8** @appname, align 8
  %167 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %166)
  %168 = call i32 (...) @usage()
  br label %169

169:                                              ; preds = %164, %154
  %170 = load i32*, i32** @regdiagfile, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32*, i32** @regfile, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** @stock_include_file, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %175, %172
  %179 = load i32, i32* @stderr, align 4
  %180 = load i8*, i8** @appname, align 8
  %181 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %180)
  %182 = call i32 (...) @usage()
  br label %183

183:                                              ; preds = %178, %175, %169
  %184 = call i32 (...) @symtable_open()
  %185 = load i8**, i8*** %5, align 8
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %8, align 8
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @SOURCE_FILE, align 4
  %190 = call i32 @include_file(i8* %188, i32 %189)
  %191 = call i32 (...) @yyparse()
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %230

194:                                              ; preds = %183
  %195 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %196 = icmp eq %struct.TYPE_11__* %195, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %194
  %198 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @SCOPE_ROOT, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %197, %194
  %204 = load i32, i32* @EX_DATAERR, align 4
  %205 = call i32 @stop(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203, %197
  %207 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %208 = call i32 @process_scope(%struct.TYPE_11__* %207)
  %209 = call %struct.TYPE_11__* @SLIST_FIRST(i32* @scope_stack)
  %210 = call i32 @dump_scope(%struct.TYPE_11__* %209)
  %211 = call i32 (...) @back_patch()
  %212 = load i32*, i32** @ofile, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = call i32 (...) @output_code()
  br label %216

216:                                              ; preds = %214, %206
  %217 = load i32*, i32** @regfile, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i32*, i32** @regfile, align 8
  %221 = load i32*, i32** @regdiagfile, align 8
  %222 = call i32 @symtable_dump(i32* %220, i32* %221)
  br label %223

223:                                              ; preds = %219, %216
  %224 = load i32*, i32** @listfile, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i8*, i8** %8, align 8
  %228 = call i32 @output_listing(i8* %227)
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %183
  %231 = call i32 @stop(i8* null, i32 0)
  ret i32 0
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.TYPE_10__* @scope_alloc(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @stop(i8*, i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.TYPE_11__* @SLIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_11__* @SLIST_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @symtable_open(...) #1

declare dso_local i32 @include_file(i8*, i32) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @process_scope(%struct.TYPE_11__*) #1

declare dso_local i32 @dump_scope(%struct.TYPE_11__*) #1

declare dso_local i32 @back_patch(...) #1

declare dso_local i32 @output_code(...) #1

declare dso_local i32 @symtable_dump(i32*, i32*) #1

declare dso_local i32 @output_listing(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
